import { Box, Button, Icon, Link, Typography } from '@mui/material'
import { formatDateTime } from '../../../utils/date'
import { PostComment } from '../../../types/post-comment'
import ThumbDownOutlinedIcon from '@mui/icons-material/ThumbDownOutlined'
import ThumbDownIcon from '@mui/icons-material/ThumbDown'
import ThumbUpOutlinedIcon from '@mui/icons-material/ThumbUpOutlined'
import ThumbUpIcon from '@mui/icons-material/ThumbUp'
import { User } from '../../../types/user'
import { useState } from 'react'
import { useMount } from '../../../utils'
import {
  likeActionToPostComment,
  selectPostCommentLikeById,
} from '../../../api/post-comment'

interface ActionListProps {
  comment: PostComment
  open: boolean
  toggleOpen: (open: boolean, commentId: number | null) => void
  currentUser: User | null
}

export default function CommentActionList({
  comment,
  open,
  toggleOpen,
  currentUser,
}: ActionListProps) {
  const [likeType, setLikeType] = useState<number>(0)
  const [likeNum, setLikeNum] = useState<number>(comment.likeNum)

  const handleLikeClick = () => {
    if (currentUser !== null) {
      let like = 0
      if (likeType === 0) {
        like = 1
        setLikeType(1)
        setLikeNum(likeNum + 1)
      } else if (likeType === 1) {
        setLikeType(0)
        setLikeNum(likeNum - 1)
      } else if (likeType === 2) {
        like = 1
        setLikeType(1)
        setLikeNum(likeNum + 1)
      }
      const param = {
        commentId: comment.id,
        userId: currentUser.id,
        type: like,
      }
      likeActionToPostComment(param).then((res) => {
        if (res.status !== 20) {
          console.log(res)
        }
      })
    } else {
      window.location.assign('/login')
    }
  }

  const handleDisLikeClick = () => {
    if (currentUser !== null) {
      let like = 0
      if (likeType === 0) {
        like = 2
        setLikeType(2)
      } else if (likeType === 1) {
        setLikeType(2)
        setLikeNum(likeNum - 1)
      } else if (likeType === 2) {
        setLikeType(2)
      }
      const param = {
        commentId: comment.id,
        userId: currentUser.id,
        type: like,
      }
      likeActionToPostComment(param).then((res) => {
        if (res.status !== 20) {
          console.log(res)
        }
      })
    } else {
      window.location.assign('/login')
    }
  }

  useMount(() => {
    if (currentUser !== null) {
      const param = { commentId: comment.id, userId: currentUser.id }
      selectPostCommentLikeById(param).then((res) => {
        if (res.status === 20) {
          const type = res.data.type
          if (type === 0) {
            setLikeType(0)
          } else if (type === 1) {
            setLikeType(1)
          } else if (type === 2) {
            setLikeType(2)
          }
        }
      })
    }
  })

  return (
    <Box sx={{ display: 'flex', textAlign: 'center', alignItems: 'center' }}>
      <Box sx={{ mr: 2 }}>
        <Typography color="text.secondary" variant="body2">
          {formatDateTime(comment.uploadTime)}
        </Typography>
      </Box>
      <Link
        underline="none"
        color="text.secondary"
        onClick={handleLikeClick}
        sx={{ cursor: 'pointer', display: 'flex', alignItems: 'center', mr: 2 }}
      >
        <Icon sx={{ ':hover': { backgroundColor: 'rgba(0,0,0,0)' } }}>
          {likeType === 0 || likeType === 2 ? (
            <ThumbUpOutlinedIcon />
          ) : (
            <ThumbUpIcon color="primary" />
          )}
        </Icon>
        <Typography component="span" sx={{ ml: 1 }}>
          {likeNum === 0 ? '' : likeNum}
        </Typography>
      </Link>
      <Link
        underline="none"
        color="text.secondary"
        onClick={handleDisLikeClick}
        sx={{ cursor: 'pointer', display: 'flex', alignItems: 'center', mr: 2 }}
      >
        <Icon sx={{ ':hover': { backgroundColor: 'rgba(0,0,0,0)' } }}>
          {likeType === 0 || likeType === 1 ? (
            <ThumbDownOutlinedIcon />
          ) : (
            <ThumbDownIcon color="primary" />
          )}
        </Icon>
      </Link>
      <Box>
        <Button
          size="small"
          onClick={() => {
            toggleOpen(open, comment.id)
          }}
        >
          <Typography variant="body2" color="text.secondary">
            {'回复'}
          </Typography>
        </Button>
      </Box>
    </Box>
  )
}
