import { Box, Button, CardContent, Link, Typography } from '@mui/material'
import { Collection } from '../../../types/collection'
import { User } from '../../../types/user'
import AuthorAvatar from '../../author-avatar'
import LockOutlinedIcon from '@mui/icons-material/LockOutlined'
import React from 'react'
import { deleteCollectionById } from '../../../api/collection'

interface CollectionActionListProps {
  collection: Collection
  handleOpen: (collection: Collection) => void
}

const CollectionActionList = ({
  collection,
  handleOpen,
}: CollectionActionListProps) => {
  // @ts-ignore
  const handleEdit = (event) => {
    event.preventDefault()
    handleOpen(collection)
  }

  // @ts-ignore
  const handleDelete = (event) => {
    event.preventDefault()
    deleteCollectionById(collection.id).then((res) => {
      console.log(res)
    })
  }

  return (
    <Box sx={{ ml: 'auto' }}>
      <Button size="small" sx={{ mr: 2 }} onClick={handleEdit}>
        {'edit'}
      </Button>
      <Button size="small" onClick={handleDelete}>
        {'delete'}
      </Button>
    </Box>
  )
}

interface CollectionTitleProps {
  collection: Collection
  author: User
  isAuthor: boolean
  handleOpen: (collection: Collection) => void
}

export const CollectionTitle = ({
  collection,
  author,
  isAuthor,
  handleOpen,
}: CollectionTitleProps) => {
  return (
    <Box sx={{ p: 2 }}>
      <CardContent>
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
          <Typography
            variant="h5"
            component="div"
            fontWeight={600}
            color="text.primary"
            sx={{ mr: 1.5 }}
          >
            {collection.name}
          </Typography>
          {!collection.type ? <LockOutlinedIcon fontSize="small" /> : ''}
          {isAuthor ? (
            <CollectionActionList
              collection={collection}
              handleOpen={handleOpen}
            />
          ) : (
            ''
          )}
        </Link>
        <Box sx={{ pt: 2, display: 'flex', alignItems: 'center' }}>
          <Box sx={{ mr: 2 }}>
            <AuthorAvatar
              author={{
                id: author.id,
                username: author.username,
                avatar: author.avatar,
              }}
            />
          </Box>
          <Box>
            <Link
              underline="hover"
              color="text.primary"
              href={`/user/${author.id}`}
              target="_blank"
            >
              <Typography>{author.username}</Typography>
            </Link>
            <Link
              underline="hover"
              color="text.primary"
              href={`/user/${author.id}/collections`}
              target="_blank"
            >
              <Typography variant="body2">{'更多收藏夹>'}</Typography>
            </Link>
          </Box>
        </Box>
      </CardContent>
    </Box>
  )
}
