import React from 'react'
import { Link, Menu, MenuItem, Typography } from '@mui/material'
import { Column } from '../../../types/column'

interface ActionListProps {
  column: Column
  anchorElColumn: HTMLElement | null
  handleEditOpen: () => void
  handleDeleteOpen: () => void
  handleCloseActionMenu: () => void
}

// TODO: add action handler
export default function ActionList({
  column,
  anchorElColumn,
  handleEditOpen,
  handleDeleteOpen,
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
      <MenuItem>
        <Link
          underline="none"
          color="text.primary"
          href={`/creator/content/column/edit/${column.id}`}
          target="_blank"
          sx={{
            ':hover': {
              backgroundColor: 'rgba(0, 0, 0, 0)',
            },
          }}
        >
          <Typography textAlign="center">{'管理内容'}</Typography>
        </Link>
      </MenuItem>
      <MenuItem onClick={handleEditOpen}>
        <Typography textAlign="center">{'修改介绍'}</Typography>
      </MenuItem>
      <MenuItem onClick={handleDeleteOpen}>
        <Typography textAlign="center">{'删除'}</Typography>
      </MenuItem>
    </Menu>
  )
}
