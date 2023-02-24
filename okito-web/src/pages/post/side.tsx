import {
  Box,
  Button,
  Divider,
  Icon,
  Link,
  Paper,
  Typography,
} from '@mui/material'
import { User } from '../../types/user'
import AuthorAvatar from '../../components/author-avatar'
import React, { useState } from 'react'
import {
  selectUserFollowByUserIdAndFollowedId,
  updateUserFollow,
} from '../../api/user'
import { useMount } from '../../utils/hook'
import ThumbUpIcon from '@mui/icons-material/ThumbUp'
import { VisibilityRounded } from '@mui/icons-material'

interface SideProps {
  author: User
  currentUser: User | null
}

export default function Side({ author, currentUser }: SideProps) {
  const [followed, setFollowed] = useState<boolean>(false)
  const [show, setShow] = useState<boolean>(false)
  const authorAvatar = {
    id: author.id,
    username: author.username,
    avatar: author.avatar,
  }

  const handleClick = () => {
    if (currentUser !== null) {
      const param = {
        followerId: currentUser?.id,
        followedId: author.id,
        follow: !followed,
      }
      updateUserFollow(param).then((res) => {
        if (res.status === 20) {
          setFollowed(!followed)
        }
      })
    } else {
      window.location.assign('/login')
    }
  }

  useMount(async () => {
    if (currentUser !== null) {
      if (currentUser.id !== author.id) {
        setShow(true)
      }
      const param = {
        followerId: currentUser?.id,
        followedId: author.id,
      }
      const follow = await selectUserFollowByUserIdAndFollowedId(param)
      if (follow.status === 20) {
        if (follow.data.follow) {
          setFollowed(true)
        }
      }
    }
    console.log(show)
  })

  return (
    <Box>
      <Paper>
        <Box sx={{ p: 2, display: 'flex', alignItems: 'center' }}>
          <AuthorAvatar author={authorAvatar} width={48} height={48} />
          <Link
            underline="none"
            color="text.primary"
            href={`/user/${authorAvatar.id}`}
            target="_blank"
            sx={{ ml: 2, cursor: 'pointer' }}
          >
            <Typography fontWeight={500}>{authorAvatar.username}</Typography>
          </Link>
        </Box>
        {show ? (
          <Box
            sx={{
              pb: 2,
              pl: 2,
              pr: 2,
              display: 'flex',
              justifyContent: 'space-around',
            }}
          >
            <Button
              variant="contained"
              fullWidth
              sx={{ mr: 2 }}
              onClick={handleClick}
            >
              {'关注'}
            </Button>
            <Button variant="outlined" fullWidth>
              {'私信'}
            </Button>
          </Box>
        ) : (
          ''
        )}
        <Divider sx={{ ml: 2, mr: 2 }} />
        <Box sx={{ p: 2 }}>
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
              <ThumbUpIcon />
            </Icon>
            <Typography color="text.secondary">{`文章被点赞 ${author.postLikeNum}`}</Typography>
          </Box>
          <Box
            color="text.secondary"
            sx={{
              display: 'flex',
              pr: 3,
              pt: 2,
              ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
              cursor: 'unset',
            }}
          >
            <Icon sx={{ pr: 4 }}>
              <VisibilityRounded />
            </Icon>
            <Typography color="text.secondary">{`文章被阅读 ${author.postViewNum}`}</Typography>
          </Box>
        </Box>
      </Paper>
    </Box>
  )
}
