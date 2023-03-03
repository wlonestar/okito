import React from 'react'
import { Menu, MenuItem, Typography } from '@mui/material'
import { Collection } from '../../../types/collection'

interface ActionListProps {
  collection: Collection
  anchorElColumn: HTMLElement | null
  handleOpen: (collection: Collection) => void
  handleCloseActionMenu: () => void
}

export default function ActionList({
  collection,
  anchorElColumn,
  handleOpen,
  handleCloseActionMenu,
}: ActionListProps) {
  const handleEdit = (id: number) => {
    console.log('handle edit', id)
    handleOpen(collection)
  }

  return (
    <Menu
      sx={{ mt: '45px' }}
      anchorEl={anchorElColumn}
      anchorOrigin={{ vertical: 'top', horizontal: 'right' }}
      keepMounted
      transformOrigin={{ vertical: 'top', horizontal: 'right' }}
      open={Boolean(anchorElColumn)}
      onClose={handleCloseActionMenu}
    >
      <MenuItem onClick={() => handleEdit(collection.id)}>
        <Typography textAlign="center">{'编辑'}</Typography>
      </MenuItem>
      <MenuItem onClick={handleCloseActionMenu}>
        <Typography textAlign="center">{'删除'}</Typography>
      </MenuItem>
    </Menu>
  )
}
