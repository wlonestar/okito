import React, { useState } from 'react'
import { AppBar, Box, Toolbar, IconButton, Badge, Theme } from '@mui/material'
import MailIcon from '@mui/icons-material/Mail'
import NotificationsIcon from '@mui/icons-material/Notifications'
import { CustomMenu } from './menu'
import { SiteLogo } from './site-logo'
import { CustomSearch } from './search'
import { DarkIcon } from './dark-icon'
import { Nav } from './nav'
import { defaultAvatar } from '../../consts'

const Authenticated = () => {
  return (
    <>
      <IconButton
        size="large"
        aria-label="show 17 new notifications"
        sx={{
          ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
          mr: 1,
        }}
      >
        <Badge badgeContent={17} color="error">
          <NotificationsIcon />
        </Badge>
      </IconButton>
      <IconButton
        size="large"
        aria-label="show 4 new mails"
        sx={{
          ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
          mr: 1,
        }}
      >
        <Badge badgeContent={4} color="error">
          <MailIcon />
        </Badge>
      </IconButton>
      <IconButton
        href={`/user/${1}`}
        target="_blank"
        sx={{
          padding: '4px',
          width: 42,
          height: 42,
          ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
        }}
      >
        <img
          style={{
            margin: 'auto',
            display: 'block',
            maxWidth: '100%',
            maxHeight: '100%',
            borderRadius: '21px',
          }}
          alt="complex"
          src={defaultAvatar}
        />
      </IconButton>
      {/*<IconButton*/}
      {/*  size="large"*/}
      {/*  edge="end"*/}
      {/*  aria-label="account of current user"*/}
      {/*  aria-controls={menuId}*/}
      {/*  aria-haspopup="true"*/}
      {/*  onClick={handleProfileMenuOpen}*/}
      {/*>*/}
      {/*  <AccountCircle />*/}
      {/*</IconButton>*/}
    </>
  )
}

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
          <Box
            sx={{
              display: { xs: 'none', md: 'flex' },
              ml: 1,
              mr: 1,
              mt: '4px',
            }}
          >
            <Authenticated />
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
