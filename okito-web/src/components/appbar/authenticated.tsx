import React from 'react'
import { User } from '../../types/user'
import { Badge, Button, IconButton, Typography } from '@mui/material'
import NotificationsOutlinedIcon from '@mui/icons-material/NotificationsOutlined'
import MailOutlinedIcon from '@mui/icons-material/MailOutlined'

interface AuthenticatedProps {
  handleOpenMenu: (event: React.MouseEvent<HTMLElement>) => void
  currentUser: User | null
}

export const Authenticated = ({
  handleOpenMenu,
  currentUser,
}: AuthenticatedProps) => {
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
        sx={{ ml: 1, mr: 2, mt: 0.5, mb: 0.5 }}
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
