import React from 'react'
import { Menu, MenuItem, Typography } from '@mui/material'
import { Collection } from '../../../types/collection'

const actions = ['编辑', '删除']

interface ActionListProps {
  collection: Collection
  anchorElColumn: HTMLElement | null
  handleCloseActionMenu: () => void
}

export default function ActionList({
  collection,
  anchorElColumn,
  handleCloseActionMenu,
}: ActionListProps) {
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
      {actions.map((action) => (
        <MenuItem key={action} onClick={handleCloseActionMenu}>
          <Typography textAlign="center">{action}</Typography>
        </MenuItem>
      ))}
    </Menu>
  )
}
