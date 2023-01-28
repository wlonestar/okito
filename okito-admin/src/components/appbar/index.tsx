import React from 'react'
import {
  AppBar,
  Box,
  Toolbar,
  IconButton,
  Typography,
  Badge,
} from '@mui/material'
import { Theme } from '@mui/material/styles'
import { siteName, siteVersion } from '../consts'
import NotificationsIcon from '@mui/icons-material/Notifications'
import Brightness4Icon from '@mui/icons-material/Brightness4'
import Brightness7Icon from '@mui/icons-material/Brightness7'
import { ColorModeContext } from '../../layout'
import { ReactComponent as Logo } from '../../assets/okito_32.svg'
import './index.css'

// const AppBar = styled(MuiAppBar, {
//   shouldForwardProp: (prop) => prop !== 'open',
// })(({ theme }) => ({
//   zIndex: theme.zIndex.drawer + 1,
//   transition: theme.transitions.create(['width', 'margin'], {
//     easing: theme.transitions.easing.sharp,
//     duration: theme.transitions.duration.leavingScreen,
//   }),
//   ...({
//     marginLeft: drawerWidth,
//     width: `calc(100% - ${drawerWidth}px)`,
//     transition: theme.transitions.create(['width', 'margin'], {
//       easing: theme.transitions.easing.sharp,
//       duration: theme.transitions.duration.enteringScreen,
//     }),
//   }),
// boxShadow: 'none',
// backdropFilter: 'blur(8px)',
// borderStyle: 'solid',
// borderColor: 'rgba(231, 235, 240)',
// borderWidth: '0px 0px thin',
// backgroundColor: 'rgba(255, 255, 255, 0.8)',
// }))

interface MyAppBarProps {
  theme: Theme
}

export const CustomAppBar = ({ theme }: MyAppBarProps) => {
  const colorMode = React.useContext(ColorModeContext)

  return (
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
      <Toolbar>
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
              color: (theme) =>
                theme.palette.mode === 'light'
                  ? '#6F7E8C'
                  : 'rgb(211, 226, 240)',
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
        <Typography
          component="div"
          variant="h6"
          color="inherit"
          noWrap
          sx={{ flexGrow: 1 }}
        ></Typography>
        {/*notification*/}
        <IconButton color="inherit">
          <Badge badgeContent={4} color="secondary">
            <NotificationsIcon />
          </Badge>
        </IconButton>
        {/*dark mode*/}
        <IconButton
          sx={{ ml: 1 }}
          onClick={colorMode.toggleColorMode}
          color="inherit"
        >
          {theme.palette.mode === 'dark' ? (
            <Brightness7Icon />
          ) : (
            <Brightness4Icon />
          )}
        </IconButton>
      </Toolbar>
    </AppBar>
  )
}
