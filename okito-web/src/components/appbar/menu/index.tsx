import React from 'react'
import { Menu, MenuItem } from '@mui/material'

interface CustomMenuProps {
  anchorEl: HTMLElement | null
  menuId: string
  isMenuOpen: boolean
  handleMenuClose: () => void
}

export const CustomMenu = ({
  anchorEl,
  menuId,
  isMenuOpen,
  handleMenuClose,
}: CustomMenuProps) => {
  return (
    <Menu
      anchorEl={anchorEl}
      anchorOrigin={{
        vertical: 'top',
        horizontal: 'right',
      }}
      id={menuId}
      keepMounted
      transformOrigin={{
        vertical: 'top',
        horizontal: 'right',
      }}
      open={isMenuOpen}
      onClose={handleMenuClose}
    >
      <MenuItem onClick={handleMenuClose}>Profile</MenuItem>
      <MenuItem onClick={handleMenuClose}>My account</MenuItem>
    </Menu>
  )
}
