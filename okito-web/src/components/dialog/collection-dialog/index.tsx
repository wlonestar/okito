import React, { ReactNode, useEffect, useRef } from 'react'
import Button from '@mui/material/Button'
import Dialog, { DialogProps } from '@mui/material/Dialog'
import DialogTitle from '@mui/material/DialogTitle'
import DialogContent from '@mui/material/DialogContent'
import DialogActions from '@mui/material/DialogActions'
import IconButton from '@mui/material/IconButton'
import CloseIcon from '@mui/icons-material/Close'
import Typography from '@mui/material/Typography'
import { Box } from '@mui/material'
import { User } from '../../../types/user'
import { Collection } from '../../../types/collection'
import CollectionPostFollow from './collection-post-follow'
import { useParams } from 'react-router-dom'

export interface DialogTitleProps {
  id: string
  children?: ReactNode
  onClose: () => void
}

export function CustomDialogTitle(props: DialogTitleProps) {
  const { children, onClose, ...other } = props

  return (
    <DialogTitle component="div" sx={{ m: 0, p: 4 }} {...other}>
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
  collections: Collection[]
  currentUser: User | null
}

export const CollectionDialog = ({
  open,
  scroll,
  handleClose,
  handleCreateCollection,
  collections,
  currentUser,
}: CollectionDialogProps) => {
  const { id } = useParams()
  const descriptionElementRef = useRef<HTMLElement>(null)

  useEffect(() => {
    if (open) {
      const { current: descriptionElement } = descriptionElementRef
      if (descriptionElement !== null) {
        descriptionElement.focus()
      }
    }
  }, [open])

  return (
    <Box>
      <Dialog
        open={open}
        onClose={handleClose}
        scroll={scroll}
        aria-labelledby="scroll-dialog-title"
        aria-describedby="scroll-dialog-description"
      >
        <CustomDialogTitle id="customized-dialog-title" onClose={handleClose}>
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
        </CustomDialogTitle>
        <DialogContent>
          {collections.map((collection) => (
            <CollectionPostFollow
              key={collection.id}
              postId={parseInt(String(id))}
              collection={collection}
              currentUser={currentUser}
            />
          ))}
        </DialogContent>
        <DialogActions sx={{ p: 4 }}>
          <Button
            variant="contained"
            sx={{ m: '0 auto' }}
            onClick={handleCreateCollection}
          >
            {'新建收藏夹'}
          </Button>
        </DialogActions>
      </Dialog>
    </Box>
  )
}
