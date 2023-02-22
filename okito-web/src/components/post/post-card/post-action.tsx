import { Post } from '../../../types/post'
import { Box, Grid, Icon, Link, Typography } from '@mui/material'
import VisibilityOutlinedIcon from '@mui/icons-material/VisibilityOutlined'
import ThumbUpOutlinedIcon from '@mui/icons-material/ThumbUpOutlined'
import ThumbUpIcon from '@mui/icons-material/ThumbUp'
import CommentOutlinedIcon from '@mui/icons-material/CommentOutlined'
import { likeActionToPost, selectPostLikeById } from '../../../api/post'
import { User } from '../../../types/user'
import { useMount } from '../../../utils/hook'
import { useState } from 'react'

interface PostActionProps {
  post: Post
  commentsNum: number
  currentUser: User | null
}

export default function PostAction({
  post,
  commentsNum,
  currentUser,
}: PostActionProps) {
  const [likeType, setLikeType] = useState<number>(0)
  const [likeNum, setLikeNum] = useState<number>(post.likeNum)

  const handleClick = () => {
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
      const param = { postId: post.id, userId: currentUser.id, type: like }
      likeActionToPost(param).then((res) => {
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
      const param = { postId: post.id, userId: currentUser.id }
      selectPostLikeById(param).then((res) => {
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
    <Grid container>
      <Grid item xs={3} md={3}>
        <Box
          color="text.secondary"
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
            cursor: 'unset',
          }}
        >
          <Icon sx={{ pr: 4 }}>
            <VisibilityOutlinedIcon />
          </Icon>
          <Typography color="text.secondary">{post.viewNum}</Typography>
        </Box>
      </Grid>
      <Grid item xs={3} md={3}>
        <Link
          underline="none"
          color="text.secondary"
          onClick={handleClick}
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
          }}
        >
          <Icon sx={{ pr: 4 }}>
            {likeType === 0 || likeType === 2 ? (
              <ThumbUpOutlinedIcon />
            ) : (
              <ThumbUpIcon color="primary" />
            )}
          </Icon>
          <Typography>{likeNum}</Typography>
        </Link>
      </Grid>
      <Grid item xs={3} md={3}>
        <Link
          underline="none"
          color="text.secondary"
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
          }}
          href={`/post/${post.id}`}
          target="_blank"
        >
          <Icon sx={{ pr: 4 }}>
            <CommentOutlinedIcon />
          </Icon>
          <Typography>{commentsNum}</Typography>
        </Link>
      </Grid>
    </Grid>
  )
}
