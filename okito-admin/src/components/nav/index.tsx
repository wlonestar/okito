import React from 'react'
import { mainListItems, secondaryListItems } from './list-items'
import { styled } from '@mui/material/styles'
import { drawerWidth, siteName, siteVersion } from '../consts'
import {
  Box,
  IconButton,
  Typography,
  Toolbar,
  Divider,
  List,
  Drawer as MuiDrawer,
} from '@mui/material'
import { ReactComponent as Logo } from '../../assets/okito_32.svg'
import './index.css'

const Drawer = styled(MuiDrawer, {
  shouldForwardProp: (prop) => prop !== 'open',
})(({ theme, open }) => ({
  '& .MuiDrawer-paper': {
    position: 'relative',
    whiteSpace: 'nowrap',
    width: drawerWidth,
    transition: theme.transitions.create('width', {
      easing: theme.transitions.easing.sharp,
      duration: theme.transitions.duration.enteringScreen,
    }),
    boxSizing: 'border-box',
    ...(!open && {
      overflowX: 'hidden',
      transition: theme.transitions.create('width', {
        easing: theme.transitions.easing.sharp,
        duration: theme.transitions.duration.leavingScreen,
      }),
      width: theme.spacing(7),
      [theme.breakpoints.up('sm')]: {
        width: theme.spacing(9),
      },
    }),
  },
}))

interface AsideProps {
  open?: boolean
}

export const Nav = (props: AsideProps) => {
  return (
    <Drawer variant="permanent" open={props.open}>
      <Toolbar
        sx={{
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'flex-end',
          px: [1],
        }}
      >
        <IconButton
          className="siteLogo"
          href="/"
          sx={{
            paddingRight: '12px',
            marginRight: '4px',
          }}
        >
          <Logo />
        </IconButton>
        <Box sx={{ flexGrow: 1 }}>
          <Typography
            color="inherit"
            noWrap
            sx={{
              flexGrow: 1,
              marginLeft: '8px',
              color: '#6F7E8C',
              lineHeight: 1.5,
              fontSize: '1.0625rem',
              fontWeight: '600',
            }}
          >
            {siteName}
          </Typography>
          <Box>
            <Typography
              color="inherit"
              noWrap
              sx={{
                flexGrow: 1,
                marginLeft: '8px',
                color: '#0072E5',
                lineHeight: 1.5,
                fontSize: '0.75rem',
                fontWeight: '600',
              }}
            >
              {siteVersion}
            </Typography>
          </Box>
        </Box>
      </Toolbar>
      <Divider />
      <List component="nav">
        {mainListItems}
        <Divider sx={{ my: 1 }} />
        {secondaryListItems}
      </List>
    </Drawer>
  )
}
