import { PinComment } from '../../../types/pin-comment'
import { Box, Button, Icon, Link, Typography } from '@mui/material'
import { formatDateTime } from '../../../utils/date'
import ThumbUpOutlinedIcon from '@mui/icons-material/ThumbUpOutlined'
import ThumbUpIcon from '@mui/icons-material/ThumbUp'
import { User } from '../../../types/user'
import { useState } from 'react'
import {
  likeActionToPinComment,
  selectPinCommentLikeById,
} from '../../../api/pin-comment'
import { useMount } from '../../../utils'

interface CommentActionProps {
  comment: PinComment
  open: boolean
  toggleOpen: (open: boolean, commentId: number | null) => void
  currentUser: User | null
}

export default function CommentAction({
  comment,
  open,
  toggleOpen,
  currentUser,
}: CommentActionProps) {
  const [likeType, setLikeType] = useState<number>(0)
  const [likeNum, setLikeNum] = useState<number>(comment.likeNum)

  const handleClick = async () => {
    if (currentUser !== null) {
      let like = 0
      if (likeType === 0 || likeType === 2) {
        like = 1
        setLikeType(1)
        setLikeNum(likeNum + 1)
      } else if (likeType === 1) {
        setLikeType(0)
        setLikeNum(likeNum - 1)
      }
      const param = {
        commentId: comment.id,
        userId: currentUser.id,
        type: like,
      }
      likeActionToPinComment(param).then((res) => {
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
      selectPinCommentLikeById(param).then((res) => {
        if (res.status === 20) {
          const type = res.data.type
          if (type === 0 || type === 2) {
            setLikeType(0)
          } else if (type === 1) {
            setLikeType(1)
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
        onClick={handleClick}
        sx={{ cursor: 'pointer', display: 'flex', alignItems: 'center' }}
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
