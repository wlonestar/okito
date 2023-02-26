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
  const { user, logout } = useAuth()

  const handleHref = () => {
    window.location.assign(`/user/${user?.id}`)
  }

  const handleLogout = async () => {
    setAnchorEl(null)
    await logout()
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
      <MenuItem onClick={handleHref}>{'个人主页'}</MenuItem>
      <MenuItem onClick={handleLogout}>{'注销'}</MenuItem>
    </Menu>
  )
}
