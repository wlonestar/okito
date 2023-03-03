import React, { useState } from 'react'
import { Box, Divider, Paper } from '@mui/material'
import { User } from '../../../types/user'
import MarkdownNavbar from 'markdown-navbar'
import '../../../components/md2html/style.scss'
import { CollectionDialog } from '../../../components/dialog/collection-dialog'
import { AuthorCard } from './author-card'
import { PostInfo } from './post-info'
import { DialogProps } from '@mui/material/Dialog'
import { PostAction } from './post-action'
import { EditCollectionDialog } from '../../../components/dialog/collection-dialog/edit-collection'
import { Collection } from '../../../types/collection'
import { useMount } from '../../../utils'
import { selectCollectionsByAuthorId } from '../../../api/collection'

interface SideProps {
  content: string
  likeType: number
  handleClickLike: () => void
  show: boolean
  followed: boolean
  handleClickFollow: () => void
  author: User
  currentUser: User | null
}

export default function Side({
  content,
  likeType,
  handleClickLike,
  show,
  followed,
  handleClickFollow,
  author,
  currentUser,
}: SideProps) {
  const [open, setOpen] = useState<boolean>(false)
  const [createOpen, setCreateOpen] = useState<boolean>(false)
  const [scroll, setScroll] = useState<DialogProps['scroll']>('paper')

  const [collections, setCollections] = useState<Collection[]>([])

  const handleClickOpen = (scrollType: DialogProps['scroll']) => () => {
    setOpen(true)
    setScroll(scrollType)
  }

  const handleClose = () => {
    setOpen(false)
  }

  const handleCreateClose = () => {
    setCreateOpen(false)
    setOpen(true)
  }

  const handleCreateCollection = () => {
    setOpen(false)
    setCreateOpen(true)
  }

  useMount(async () => {
    if (currentUser !== null) {
      const collections = await selectCollectionsByAuthorId(currentUser.id)
      if (collections.status === 20) {
        setCollections(collections.data)
      }
    }
  })

  return (
    <Box>
      <Paper>
        <AuthorCard
          author={author}
          show={show}
          followed={followed}
          handleClickFollow={handleClickFollow}
        />
        <Divider sx={{ ml: 2, mr: 2 }} />
        <PostInfo author={author} />
      </Paper>
      <Paper sx={{ mt: 2 }}>
        <PostAction
          likeType={likeType}
          handleClickLike={handleClickLike}
          handleClickOpen={handleClickOpen}
        />
      </Paper>
      <CollectionDialog
        open={open}
        scroll={scroll}
        handleClose={handleClose}
        handleCreateCollection={handleCreateCollection}
        collections={collections}
        currentUser={currentUser}
      />
      <EditCollectionDialog
        open={createOpen}
        collections={collections}
        handleClose={handleCreateClose}
        currentUser={currentUser}
      />
      <Paper sx={{ mt: 2 }}>
        {/*TODO: add more styles*/}
        <MarkdownNavbar className="markdown-navbar" source={content} />
      </Paper>
    </Box>
  )
}
