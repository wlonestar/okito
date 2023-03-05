import React from 'react'
import { Menu, MenuItem, Typography } from '@mui/material'
import { Column } from '../../../types/column'

interface ActionListProps {
  column: Column
  anchorElColumn: HTMLElement | null
  handleOpen: () => void
  handleCloseActionMenu: () => void
}

// TODO: add action handler
export default function ActionList({
  column,
  anchorElColumn,
  handleOpen,
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
      <MenuItem onClick={handleCloseActionMenu}>
        <Typography textAlign="center">{'管理内容'}</Typography>
      </MenuItem>
      <MenuItem onClick={handleOpen}>
        <Typography textAlign="center">{'修改介绍'}</Typography>
      </MenuItem>
      <MenuItem onClick={handleCloseActionMenu}>
        <Typography textAlign="center">{'删除'}</Typography>
      </MenuItem>
    </Menu>
  )
}
