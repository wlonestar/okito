import React from 'react'
import { Menu, MenuItem } from '@mui/material'
import { useAuth } from '../../context/auth-context'

interface CustomMenuProps {
  anchorEl: HTMLElement | null
  setAnchorEl: any
  isMenuOpen: boolean
  handleMenuClose: () => void
}

export default function CustomMenu({
  anchorEl,
  setAnchorEl,
  isMenuOpen,
  handleMenuClose,
}: CustomMenuProps) {
  const { logout } = useAuth()

  const handleLogout = () => {
    setAnchorEl(null)
    logout().then(() => {
      console.log('logout')
    })
  }

  return (
    <Menu
      sx={{ mt: 5 }}
      anchorEl={anchorEl}
      anchorOrigin={{
        vertical: 'top',
        horizontal: 'right',
      }}
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
      <MenuItem onClick={handleLogout}>Log Out</MenuItem>
    </Menu>
  )
}
