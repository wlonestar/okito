import { Collection } from '../../../types/collection'
import { User } from '../../../types/user'
import { Box, Button, Divider, Link, Typography } from '@mui/material'
import React, { useState } from 'react'
import { useMount } from '../../../utils'
import { countPostsByCollectionId } from '../../../api/collection'
import {
  selectUserCollectionFollowByUserIdAndCollectionId,
  updateFollowCollection,
} from '../../../api/user'

interface CollectionPostFollowProps {
  collection: Collection
  currentUser: User | null
}

export default function CollectionPostFollow({
  collection,
  currentUser,
}: CollectionPostFollowProps) {
  const [postsNum, setPostsNum] = useState<number>(0)
  const [followed, setFollowed] = useState<boolean>(false)

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

  useMount(async () => {
    const posts = await countPostsByCollectionId(collection.id)
    if (posts.status === 20) {
      setPostsNum(posts.data)
    }
    if (currentUser !== null) {
      const param = { userId: currentUser.id, collectionId: collection.id }
      const followData =
        await selectUserCollectionFollowByUserIdAndCollectionId(param)
      if (followData.status === 20) {
        if (followData.data.follow) {
          setFollowed(true)
        }
      }
    }
  })

  return (
    <Box sx={{ width: '500px' }}>
      <Box sx={{ p: 2, display: 'flex', alignItems: 'center' }}>
        <Box>
          <Link
            underline="none"
            color="text.primary"
            href={`/collection/${collection.id}`}
            target="_blank"
            sx={{ cursor: 'pointer' }}
          >
            <Typography variant="h6" fontWeight={600} gutterBottom>
              {collection.name}
            </Typography>
          </Link>
          <Box sx={{ display: 'flex' }}>
            <Typography variant="body2" color="text.secondary">
              {postsNum + ' 篇文章'}
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
            {'已收藏'}
          </Button>
        ) : (
          <Button
            variant="contained"
            size="small"
            onClick={handleClick}
            sx={{ marginLeft: 'auto' }}
          >
            {'收藏'}
          </Button>
        )}
      </Box>
      <Divider sx={{ ml: 2, mr: 2 }} />
    </Box>
  )
}
