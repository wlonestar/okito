import { Tag } from '../../../types/tag'
import { User } from '../../../types/user'
import {
  Box,
  Button,
  ButtonBase,
  Divider,
  Link,
  Typography,
} from '@mui/material'
import React, { useState } from 'react'
import { useMount } from '../../../utils/hook'
import CheckOutlinedIcon from '@mui/icons-material/CheckOutlined'
import AddOutlinedIcon from '@mui/icons-material/AddOutlined'
import {
  selectTagFollowByUserIdAndTagId,
  updateTagFollow,
} from '../../../api/tag'

interface TagTitleProps {
  tag: Tag
  currentUser: User | null
}

export default function TagTitle({ tag, currentUser }: TagTitleProps) {
  const [followed, setFollowed] = useState<boolean>(false)

  const handleClick = () => {
    if (currentUser !== null) {
      const param = {
        userId: currentUser?.id,
        tagId: tag.id,
        follow: !followed,
      }
      updateTagFollow(param).then((res) => {
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
      const param = {
        userId: currentUser.id,
        tagId: tag.id,
      }
      const follow = await selectTagFollowByUserIdAndTagId(param)
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
        <ButtonBase
          href={`/tag/${tag.id}`}
          target="_blank"
          sx={{ width: 48, height: 48 }}
        >
          <img
            style={{
              margin: 'auto',
              display: 'block',
              maxWidth: '100%',
              maxHeight: '100%',
            }}
            alt={tag.name}
            src={tag.cover}
          />
        </ButtonBase>
        <Box sx={{ ml: 2 }}>
          <Link
            underline="none"
            color="text.primary"
            href={`/tag/${tag.id}`}
            target="_blank"
            sx={{ cursor: 'pointer' }}
          >
            <Typography variant="body1" fontWeight={600}>
              {tag.name}
            </Typography>
          </Link>
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
