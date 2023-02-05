import React, { useState } from 'react'
import { AppBar, Box, Toolbar, IconButton, Badge, Theme } from '@mui/material'
import AccountCircle from '@mui/icons-material/AccountCircle'
import MailIcon from '@mui/icons-material/Mail'
import NotificationsIcon from '@mui/icons-material/Notifications'
import { CustomMenu } from './menu'
import { SiteLogo } from './site-logo'
import { CustomSearch } from './search'
import { DarkIcon } from './dark-icon'
import { Nav } from './nav'

interface CustomAppBarProps {
  theme: Theme
}

export const CustomAppBar = ({ theme }: CustomAppBarProps) => {
  const menuId = 'primary-search-account-menu'
  const [anchorEl, setAnchorEl] = useState<null | HTMLElement>(null)
  const isMenuOpen = Boolean(anchorEl)

  const handleProfileMenuOpen = (event: React.MouseEvent<HTMLElement>) => {
    setAnchorEl(event.currentTarget)
  }

  const handleMenuClose = () => {
    setAnchorEl(null)
  }

  return (
    <>
      <AppBar
        position="fixed"
        color="inherit"
        sx={{
          zIndex: (theme) => theme.zIndex.drawer + 1,
          boxShadow: 'none',
          backdropFilter: 'blur(8px)',
          borderStyle: 'solid',
          borderColor: (theme) =>
            theme.palette.mode === 'light'
              ? 'rgba(231, 235, 240)'
              : 'rgba(194, 224, 255, 0.08)',
          borderWidth: '0px 0px thin',
          backgroundColor: (theme) =>
            theme.palette.mode === 'light'
              ? 'rgba(255, 255, 255, 0.8)'
              : 'rgba(0, 0, 0, 0)',
        }}
      >
        <Toolbar
          sx={{
            width: '1080px',
            margin: '0 auto',
          }}
        >
          <SiteLogo />
          <Nav />
          <Box sx={{ flexGrow: 1 }} />
          <CustomSearch theme={theme} />
          <Box sx={{ display: { xs: 'none', md: 'flex' } }}>
            <IconButton
              size="large"
              aria-label="show 4 new mails"
              color="inherit"
            >
              <Badge badgeContent={4} color="error">
                <MailIcon />
              </Badge>
            </IconButton>
            <IconButton
              size="large"
              aria-label="show 17 new notifications"
              color="inherit"
            >
              <Badge badgeContent={17} color="error">
                <NotificationsIcon />
              </Badge>
            </IconButton>
            <IconButton
              size="large"
              edge="end"
              aria-label="account of current user"
              aria-controls={menuId}
              aria-haspopup="true"
              onClick={handleProfileMenuOpen}
              color="inherit"
            >
              <AccountCircle />
            </IconButton>
          </Box>
          <DarkIcon theme={theme} />
        </Toolbar>
      </AppBar>
      <CustomMenu
        anchorEl={anchorEl}
        menuId={menuId}
        isMenuOpen={isMenuOpen}
        handleMenuClose={handleMenuClose}
      />
    </>
  )
}
