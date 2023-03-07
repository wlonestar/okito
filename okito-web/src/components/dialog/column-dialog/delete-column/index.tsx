import {
  Box,
  Button,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  Typography,
} from '@mui/material'
import React from 'react'
import { User } from '../../../../types/user'
import { Column } from '../../../../types/column'
import { deleteColumnById } from '../../../../api/column'

interface DeleteColumnDialogProps {
  open: boolean
  column: Column
  handleClose: () => void
  currentUser: User | null
}

export const DeleteColumnDialog = ({
  open,
  column,
  handleClose,
  currentUser,
}: DeleteColumnDialogProps) => {
  const handleDelete = () => {
    if (currentUser !== null) {
      console.log('click delete confirm', column.id, currentUser.id)
      deleteColumnById(column.id).then((res) => {
        console.log(res)
        handleClose()
        window.location.reload()
      })
    }
  }

  return (
    <Box>
      <Dialog
        open={open}
        onClose={handleClose}
        aria-labelledby="alert-dialog-title"
        aria-describedby="alert-dialog-description"
      >
        <DialogTitle id="alert-dialog-title" color="red">
          {'删除专栏'}
        </DialogTitle>
        <DialogContent>
          <Typography variant="body1">
            {'确定要将专栏彻底删除吗？'}
            {'专栏里的内容不会被删除'}
          </Typography>
        </DialogContent>
        <DialogActions sx={{ p: 2, display: 'flex' }}>
          <Button variant="outlined" onClick={handleClose}>
            {'取消'}
          </Button>
          <Button variant="contained" onClick={handleDelete} autoFocus>
            {'确认'}
          </Button>
        </DialogActions>
      </Dialog>
    </Box>
  )
}
