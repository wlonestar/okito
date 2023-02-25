import React, { useState } from 'react'
import {
  AppBar,
  Box,
  Toolbar,
  IconButton,
  Badge,
  Theme,
  Button,
  Typography,
} from '@mui/material'
import SiteLogo from './site-logo'
import CustomSearch from './search'
import DarkIcon from './dark-icon'
import Nav from './nav'
import { User } from '../../types/user'
import NotificationsOutlinedIcon from '@mui/icons-material/NotificationsOutlined'
import MailOutlinedIcon from '@mui/icons-material/MailOutlined'
import CustomMenu from './menu'

interface AuthenticatedProps {
  handleOpenMenu: (event: React.MouseEvent<HTMLElement>) => void
  currentUser: User | null
}

const Authenticated = ({ handleOpenMenu, currentUser }: AuthenticatedProps) => {
  return (
    <>
      <IconButton
        size="large"
        aria-label="show 17 new notifications"
        sx={{ ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' }, mr: 1 }}
      >
        <Badge badgeContent={17} color="error">
          <NotificationsOutlinedIcon />
        </Badge>
      </IconButton>
      <IconButton
        size="large"
        aria-label="show 4 new mails"
        sx={{ ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' }, mr: 1 }}
      >
        <Badge badgeContent={4} color="error">
          <MailOutlinedIcon />
        </Badge>
      </IconButton>
      <Button
        size="small"
        variant="contained"
        href={'/creator'}
        target="_blank"
        sx={{ mr: 1, mt: 0.5, mb: 0.5 }}
      >
        <Typography variant="body2">{'创作中心'}</Typography>
      </Button>
      <IconButton
        onClick={handleOpenMenu}
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
          alt={currentUser?.username}
          src={currentUser?.avatar}
        />
      </IconButton>
    </>
  )
}

const UnAuthenticated = () => {
  return (
    <>
      <Button size="small" variant="outlined" href={'/login'}>
        {'登录/注册'}
      </Button>
    </>
  )
}

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
