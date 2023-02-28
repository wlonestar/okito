import React, { ReactNode, useEffect, useRef, useState } from 'react'
import Button from '@mui/material/Button'
import { styled } from '@mui/material/styles'
import Dialog, { DialogProps } from '@mui/material/Dialog'
import DialogTitle from '@mui/material/DialogTitle'
import DialogContent from '@mui/material/DialogContent'
import DialogActions from '@mui/material/DialogActions'
import IconButton from '@mui/material/IconButton'
import CloseIcon from '@mui/icons-material/Close'
import Typography from '@mui/material/Typography'
import { Box } from '@mui/material'
import { User } from '../../../types/user'
import { useMount } from '../../../utils'
import { Collection } from '../../../types/collection'
import { selectCollectionsByAuthorId } from '../../../api/collection'
import CollectionPostFollow from '../../collection/collection-post-follow'

const BootstrapDialog = styled(Dialog)(({ theme }) => ({
  '& .MuiDialogContent-root': {
    padding: theme.spacing(3),
  },
  '& .MuiDialogActions-root': {
    padding: theme.spacing(2),
  },
}))

export interface DialogTitleProps {
  id: string
  children?: ReactNode
  onClose: () => void
}

function BootstrapDialogTitle(props: DialogTitleProps) {
  const { children, onClose, ...other } = props

  return (
    <DialogTitle sx={{ m: 0, p: 4 }} {...other}>
      {children}
      {onClose ? (
        <IconButton
          aria-label="close"
          onClick={onClose}
          sx={{
            position: 'absolute',
            right: 8,
            top: 8,
            color: (theme) => theme.palette.grey[500],
          }}
        >
          <CloseIcon />
        </IconButton>
      ) : null}
    </DialogTitle>
  )
}

interface CollectionDialogProps {
  open: boolean
  scroll: DialogProps['scroll']
  handleClose: () => void
  handleCreateCollection: () => void
  currentUser: User | null
}

export const CollectionDialog = ({
  open,
  scroll,
  handleClose,
  handleCreateCollection,
  currentUser,
}: CollectionDialogProps) => {
  const descriptionElementRef = useRef<HTMLElement>(null)
  const [collections, setCollections] = useState<Collection[]>([])

  useEffect(() => {
    if (open) {
      const { current: descriptionElement } = descriptionElementRef
      if (descriptionElement !== null) {
        descriptionElement.focus()
      }
    }
  }, [open])

  useMount(async () => {
    if (currentUser !== null) {
      const collections = await selectCollectionsByAuthorId(currentUser.id)
      if (collections.status === 20) {
        setCollections(collections.data)
        console.log(collections.data)
      }
    }
  })

  return (
    <Box>
      <BootstrapDialog
        open={open}
        onClose={handleClose}
        scroll={scroll}
        aria-labelledby="scroll-dialog-title"
        aria-describedby="scroll-dialog-description"
      >
        <BootstrapDialogTitle
          id="customized-dialog-title"
          onClose={handleClose}
        >
          <Typography
            variant="h5"
            fontWeight={500}
            sx={{ textAlign: 'center' }}
            gutterBottom
          >
            {'添加收藏'}
          </Typography>
          <Typography
            variant="body2"
            color="text.secondary"
            sx={{ textAlign: 'center' }}
          >
            {'请选择你想添加的收藏夹'}
          </Typography>
        </BootstrapDialogTitle>
        <DialogContent>
          {collections.map((collection) => (
            <CollectionPostFollow
              key={collection.id}
              collection={collection}
              currentUser={currentUser}
            />
          ))}
        </DialogContent>
        <DialogActions>
          <Button
            variant="contained"
            sx={{ m: '0 auto' }}
            onClick={handleCreateCollection}
          >
            {'新建收藏夹'}
          </Button>
        </DialogActions>
      </BootstrapDialog>
    </Box>
  )
}
