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
import { CreateCollectionDialog } from '../../../components/dialog/collection-dialog/create-collection'

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
    // TODO
    setOpen(false)
    setCreateOpen(true)
  }

  const handleClickSubmit = () => {
    // TODO
  }

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
        currentUser={currentUser}
      />
      <CreateCollectionDialog
        open={createOpen}
        handleClose={handleCreateClose}
        handleClickSubmit={handleClickSubmit}
        currentUser={currentUser}
      />
      <Paper sx={{ mt: 2 }}>
        {/*TODO: add more styles*/}
        <MarkdownNavbar className="markdown-navbar" source={content} />
      </Paper>
    </Box>
  )
}
