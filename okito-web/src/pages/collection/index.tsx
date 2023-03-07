import { Box, Paper } from '@mui/material'
import { useParams } from 'react-router-dom'
import { defaultUser, User } from '../../types/user'
import { CollectionTitle } from '../../components/collection/collection-title'
import React, { useEffect, useState } from 'react'
import { Collection, defaultCollection } from '../../types/collection'
import { useMount } from '../../utils'
import { selectCollectionById } from '../../api/collection'
import { selectUserById } from '../../api/user'
import { Post } from '../../types/post'
import { selectPostsByCollectionId } from '../../api/post'
import { PostCard } from '../../components/post/post-card'
import { EditCollectionDialog } from '../../components/dialog/collection-dialog/edit-collection'

interface CollectionPageProps {
  currentUser: User | null
}

export default function CollectionPage({ currentUser }: CollectionPageProps) {
  const { id } = useParams()
  const [collection, setCollection] = useState<Collection>(defaultCollection)
  const [author, setAuthor] = useState<User>(defaultUser)
  const [posts, setPosts] = useState<Post[]>([])
  const [isAuthor, setIsAuthor] = useState<boolean>(false)
  const [open, setOpen] = useState<boolean>(false)
  const [prevData, setPrevData] = useState<Collection>(defaultCollection)

  const handleClose = () => {
    setOpen(false)
  }

  const handleOpen = (collection: Collection) => {
    setOpen(true)
    setPrevData(collection)
  }

  useMount(async () => {
    const collectionId = Number(id)
    const collection = await selectCollectionById(collectionId)
    if (collection.status === 20) {
      setCollection(collection.data)
    }
    const author = await selectUserById(collection.data.authorId)
    if (author.status === 20) {
      setAuthor(author.data)
    }
    const posts = await selectPostsByCollectionId(collectionId)
    if (posts.status === 20) {
      setPosts(posts.data)
    }
    if (currentUser !== null) {
      if (collection.data.authorId === currentUser.id) {
        setIsAuthor(true)
      }
    }
  })

  useEffect(() => {}, [collection])

  return (
    <Box sx={{ maxWidth: '1080px', mt: 3, mb: 3, ml: 'auto', mr: 'auto' }}>
      <Paper>
        <CollectionTitle
          collection={collection}
          author={author}
          isAuthor={isAuthor}
          handleOpen={() => handleOpen(collection)}
        />
      </Paper>
      <EditCollectionDialog
        open={open}
        prevData={prevData}
        handleClose={handleClose}
        currentUser={currentUser}
      />
      <Paper sx={{ mt: 3 }}>
        {posts.map((post) => (
          <PostCard key={post.id} post={post} currentUser={currentUser} />
        ))}
      </Paper>
    </Box>
  )
}
