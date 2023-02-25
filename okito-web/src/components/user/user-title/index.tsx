import React, { useState } from 'react'
import { Box, Button, Divider, Link, Typography } from '@mui/material'
import { User } from '../../../types/user'
import AuthorAvatar from '../../author-avatar'
import { useMount } from '../../../utils'
import {
  selectUserFollowByUserIdAndFollowedId,
  updateUserFollow,
} from '../../../api/user'
import CheckOutlinedIcon from '@mui/icons-material/CheckOutlined'
import AddOutlinedIcon from '@mui/icons-material/AddOutlined'

interface UserTitleProps {
  user: User
  currentUser: User | null
}

export default function UserTitle({ user, currentUser }: UserTitleProps) {
  const [followed, setFollowed] = useState<boolean>(false)

  const authorAvatar = {
    id: user.id,
    username: user.username,
    avatar: user.avatar,
  }

  const handleClick = () => {
    if (currentUser !== null) {
      const param = {
        followerId: currentUser?.id,
        followedId: user.id,
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
    const param = {
      followerId: currentUser?.id,
      followedId: user.id,
    }
    if (currentUser !== null) {
      const follow = await selectUserFollowByUserIdAndFollowedId(param)
      if (follow.status === 20) {
        if (follow.data.follow) {
          setFollowed(true)
        }
      }
    }
  })

  return (
    <>
      <Box sx={{ p: 2, display: 'flex', alignItems: 'center' }}>
        <AuthorAvatar author={authorAvatar} width={48} height={48} />
        <Box sx={{ ml: 2 }}>
          <Link
            underline="none"
            color="text.primary"
            href={`/user/${user.id}`}
            target="_blank"
            sx={{ cursor: 'pointer' }}
          >
            <Typography variant="body1" fontWeight={600} gutterBottom>
              {user.username}
            </Typography>
          </Link>
          <Box>
            <Typography variant="body2" color="text.secondary">
              {user.bio !== null ? user.bio : 'default'}
            </Typography>
          </Box>
        </Box>
        {followed ? (
          <Button
            variant="contained"
            size="small"
            onClick={handleClick}
            sx={{ marginLeft: 'auto' }}
            color="inherit"
          >
            <CheckOutlinedIcon />
            {'已关注'}
          </Button>
        ) : (
          <Button
            variant="contained"
            size="small"
            onClick={handleClick}
            sx={{ marginLeft: 'auto' }}
          >
            <AddOutlinedIcon />
            {'关注'}
          </Button>
        )}
      </Box>
      <Divider />
    </>
  )
}
