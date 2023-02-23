import { Collection } from '../../../types/collection'
import { User } from '../../../types/user'
import { Box, Divider, Link, Typography } from '@mui/material'
import { formatDate } from '../../../utils/date'
import { PointerDivider } from '../../divider'
import { useState } from 'react'
import { useMount } from '../../../utils/hook'
import {
  countFollowByCollectionId,
  countPostsByCollectionId,
} from '../../../api/collection'

interface CollectionTitleProps {
  collection: Collection
  currentUser: User | null
}

export default function CollectionTitle({
  collection,
  currentUser,
}: CollectionTitleProps) {
  const [postsNum, setPostsNum] = useState<number>(0)
  const [followNum, setFollowNum] = useState<number>(0)

  useMount(async () => {
    const posts = await countPostsByCollectionId(collection.id)
    if (posts.status === 20) {
      setPostsNum(posts.data)
    }
    const follows = await countFollowByCollectionId(collection.id)
    if (follows.status === 20) {
      setFollowNum(follows.data)
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
            sx={{ cursor: 'pointer' }}
          >
            <Typography variant="h6" fontWeight={600} gutterBottom>
              {collection.name}
            </Typography>
          </Link>
          <Box sx={{ display: 'flex' }}>
            <Typography variant="body2" color="text.secondary">
              {formatDate(collection.updateTime)}
              {' 更新'}
              <PointerDivider />
              {postsNum}
              {' 篇文章'}
              <PointerDivider />
              {followNum}
              {' 订阅'}
            </Typography>
          </Box>
        </Box>
        <Box sx={{ marginLeft: 'auto' }}>{'todo'}</Box>
      </Box>
      <Divider sx={{ ml: 2, mr: 2 }} />
    </>
  )
}
