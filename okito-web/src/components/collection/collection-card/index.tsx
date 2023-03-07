import { Collection } from '../../../types/collection'
import { User } from '../../../types/user'
import {
  Box,
  Button,
  Divider,
  IconButton,
  Link,
  Typography,
} from '@mui/material'
import { formatDate } from '../../../utils/date'
import { PointerDivider } from '../../divider'
import React, { useState } from 'react'
import { useMount } from '../../../utils'
import {
  countFollowNumByCollectionId,
  countPostsByCollectionId,
} from '../../../api/collection'
import {
  selectUserCollectionFollowByUserIdAndCollectionId,
  updateFollowCollection,
} from '../../../api/user'
import MoreHorizOutlinedIcon from '@mui/icons-material/MoreHorizOutlined'
import AddOutlinedIcon from '@mui/icons-material/AddOutlined'
import CheckOutlinedIcon from '@mui/icons-material/CheckOutlined'
import LockOutlinedIcon from '@mui/icons-material/LockOutlined'
import ActionList from './action-list'

interface CollectionCardProps {
  collection: Collection
  homepage: boolean
  handleOpen?: (collection: Collection) => void
  currentUser: User | null
}

export default function CollectionCard({
  collection,
  homepage,
  handleOpen,
  currentUser,
}: CollectionCardProps) {
  const [postsNum, setPostsNum] = useState<number>(0)
  const [followNum, setFollowNum] = useState<number>(0)
  const [followed, setFollowed] = useState<boolean>(false)
  const [isAuthor, setIsAuthor] = useState<boolean>(false)
  const [anchorElColumn, setAnchorElColumn] = useState<null | HTMLElement>(null)

  const handleClick = () => {
    if (currentUser !== null) {
      const param = {
        userId: currentUser?.id,
        collectionId: collection.id,
        follow: !followed,
      }
      updateFollowCollection(param).then((res) => {
        if (res.status === 20) {
          setFollowed(!followed)
        }
      })
    } else {
      window.location.assign('/login')
    }
  }

  const handleOpenUserMenu = (event: React.MouseEvent<HTMLElement>) => {
    setAnchorElColumn(event.currentTarget)
  }

  const handleCloseActionMenu = () => {
    setAnchorElColumn(null)
  }

  useMount(async () => {
    const posts = await countPostsByCollectionId(collection.id)
    if (posts.status === 20) {
      setPostsNum(posts.data)
    }
    if (currentUser !== null) {
      const follows = await countFollowNumByCollectionId(collection.id)
      if (follows.status === 20) {
        setFollowNum(follows.data)
      }
      const param = { userId: currentUser.id, collectionId: collection.id }
      const followData =
        await selectUserCollectionFollowByUserIdAndCollectionId(param)
      if (followData.status === 20) {
        if (followData.data.follow) {
          setFollowed(true)
        }
      }
      if (collection.authorId === currentUser.id) {
        setIsAuthor(true)
      }
    }
  })

  return (
    <>
      <Box sx={{ p: 2, display: 'flex', alignItems: 'center' }}>
        <Box>
          <Link
            underline="none"
            color="text.primary"
            href={`/collection/${collection.id}`}
            target="_blank"
            sx={{
              display: 'flex',
              alignItems: 'center',
              cursor: 'pointer',
              pb: 1.5,
            }}
          >
            <Typography variant="h6" fontWeight={600} sx={{ mr: 1.5 }}>
              {collection.name}
            </Typography>
            {!collection.type ? <LockOutlinedIcon fontSize="small" /> : ''}
          </Link>
          <Box sx={{ display: 'flex' }}>
            <Typography variant="body2" color="text.secondary">
              {formatDate(collection.updateTime) + ' 更新'}
              <PointerDivider />
              {postsNum + ' 篇文章'}
              <PointerDivider />
              {collection.type ? followNum + ' 订阅' : 'private'}
            </Typography>
          </Box>
        </Box>
        {homepage && isAuthor ? (
          <IconButton
            sx={{ size: 'small', marginLeft: 'auto' }}
            onClick={handleOpenUserMenu}
          >
            <MoreHorizOutlinedIcon />
          </IconButton>
        ) : followed ? (
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
        {handleOpen !== undefined ? (
          <ActionList
            collection={collection}
            anchorElColumn={anchorElColumn}
            handleOpen={() => handleOpen(collection)}
            handleCloseActionMenu={handleCloseActionMenu}
          />
        ) : (
          ''
        )}
      </Box>
      <Divider sx={{ ml: 2, mr: 2 }} />
    </>
  )
}
