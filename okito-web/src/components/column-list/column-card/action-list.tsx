import { Menu, MenuItem, Typography } from '@mui/material'
import { Column } from '../../../types/column'
import { useMount } from '../../../utils/hook'
import React from 'react'

const actions = ['管理内容', '修改介绍', '删除']

interface ActionListProps {
  column: Column
  anchorElColumn: HTMLElement | null
  handleCloseActionMenu: () => void
}

// TODO: add action handler
export const ActionList = ({
  column,
  anchorElColumn,
  handleCloseActionMenu,
}: ActionListProps) => {
  useMount(() => {
    console.log(column)
  })

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
