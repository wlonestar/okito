import React from 'react'
import {
  AppBar,
  Box,
  Toolbar,
  IconButton,
  Badge,
  Theme,
  Button,
} from '@mui/material'
import { SiteLogo } from './site-logo'
import { CustomSearch } from './search'
import { DarkIcon } from './dark-icon'
import { Nav } from './nav'
import { User } from '../../types/user'
import { CurrentUserProps } from '../../types/current-user-props'
import NotificationsOutlinedIcon from '@mui/icons-material/NotificationsOutlined'
import MailOutlinedIcon from '@mui/icons-material/MailOutlined'

const Authenticated = ({ currentUser }: CurrentUserProps) => {
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
      <IconButton
        href={`/user/${currentUser?.id}`}
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
            {user === null ? (
              <UnAuthenticated />
            ) : (
              <Authenticated currentUser={user} />
            )}
          </Box>
          <DarkIcon theme={theme} />
        </Toolbar>
      </AppBar>
    </>
  )
}
