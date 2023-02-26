import React, { useState } from 'react'
import { AppBar, Box, Toolbar, Theme } from '@mui/material'
import SiteLogo from './site-logo'
import CustomSearch from './search'
import DarkIcon from './dark-icon'
import Nav from './nav'
import { User } from '../../types/user'
import CustomMenu from './menu'
import { Authenticated } from './authenticated'
import { UnAuthenticated } from './unauthenticated'

interface CustomAppBarProps {
  theme: Theme
  user: User | null
}

export const CustomAppBar = ({ theme, user }: CustomAppBarProps) => {
  const [anchorEl, setAnchorEl] = useState<null | HTMLElement>(null)

  const handleOpenMenu = (event: React.MouseEvent<HTMLElement>) => {
    setAnchorEl(event.currentTarget)
  }

  const handleCloseMenu = () => {
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
        <Toolbar sx={{ width: '1200px', margin: '0 auto' }}>
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
            {user === null ? (
              <UnAuthenticated />
            ) : (
              <Authenticated
                handleOpenMenu={handleOpenMenu}
                currentUser={user}
              />
            )}
          </Box>
          <CustomMenu
            anchorEl={anchorEl}
            setAnchorEl={setAnchorEl}
            isMenuOpen={Boolean(anchorEl)}
            handleMenuClose={handleCloseMenu}
          />
          <DarkIcon theme={theme} />
        </Toolbar>
      </AppBar>
    </>
  )
}
