import { useState } from 'react'
import { Box, Grid, Icon, Link, Typography } from '@mui/material'
import IosShareOutlinedIcon from '@mui/icons-material/IosShareOutlined'
import ThumbUpOutlinedIcon from '@mui/icons-material/ThumbUpOutlined'
import ThumbUpIcon from '@mui/icons-material/ThumbUp'
import SmsOutlinedIcon from '@mui/icons-material/SmsOutlined'
import { User } from '../../../types/user'
import { useMount } from '../../../utils'
import { Pin } from '../../../types/pin'
import { likeActionToPin, selectPinLikeById } from '../../../api/pin'

interface PinActionProps {
  pin: Pin
  open: boolean
  toggleOpen: (open: boolean) => void
  commentNum: number
  currentUser: User | null
}

export default function PinAction({
  pin,
  open,
  toggleOpen,
  commentNum,
  currentUser,
}: PinActionProps) {
  const [likeType, setLikeType] = useState<number>(0)
  const [likeNum, setLikeNum] = useState<number>(pin.likeNum)
  const [commentOpen, setCommentOpen] = useState<boolean>(false)

  const handleClickLike = () => {
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
      const param = { pinId: pin.id, userId: currentUser.id, type: like }
      likeActionToPin(param).then((res) => {
        if (res.status !== 20) {
          console.log(res)
        }
      })
    } else {
      window.location.assign('/login')
    }
  }

  const handleClickComment = () => {
    setCommentOpen(!commentOpen)
    toggleOpen(open)
  }

  useMount(() => {
    if (currentUser !== null) {
      const param = { pinId: pin.id, userId: currentUser.id }
      selectPinLikeById(param).then((res) => {
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
    <Grid container sx={{ mt: 2 }}>
      <Grid item xs={3} md={3} sx={{ margin: '0 auto' }}>
        <Box
          color="text.secondary"
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
            cursor: 'unset',
            textAlign: 'center',
            margin: '0 auto',
          }}
        >
          <Icon sx={{ pr: 4 }}>
            <IosShareOutlinedIcon />
          </Icon>
          <Typography color="text.secondary">{'分享'}</Typography>
        </Box>
      </Grid>
      <Grid item xs={3} md={3} sx={{ margin: '0 auto' }}>
        <Link
          underline="none"
          color="text.secondary"
          onClick={handleClickComment}
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
            cursor: 'pointer',
          }}
        >
          <Icon sx={{ pr: 4 }}>
            <SmsOutlinedIcon color={commentOpen ? 'primary' : 'inherit'} />
          </Icon>
          <Typography color="text.secondary">{commentNum}</Typography>
        </Link>
      </Grid>
      <Grid item xs={3} md={3} sx={{ margin: '0 auto' }}>
        <Link
          underline="none"
          color="text.secondary"
          onClick={handleClickLike}
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
            cursor: 'pointer',
          }}
        >
          <Icon sx={{ pr: 4 }}>
            {likeType === 0 || likeType === 2 ? (
              <ThumbUpOutlinedIcon />
            ) : (
              <ThumbUpIcon color="primary" />
            )}
          </Icon>
          <Typography color="text.secondary">{likeNum}</Typography>
        </Link>
      </Grid>
    </Grid>
  )
}
