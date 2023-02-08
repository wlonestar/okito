import React from 'react'
import { Outlet } from 'react-router-dom'
import {
  Box,
  Container,
  createTheme,
  CssBaseline,
  ThemeProvider,
  Toolbar,
} from '@mui/material'
import { CustomAppBar } from '../components/appbar'
import { CurrentUserProps } from '../types/current-user-props'

export const ColorModeContext = React.createContext({
  toggleColorMode: () => {},
})

export const Layout = ({ currentUser }: CurrentUserProps) => {
  const [mode, setMode] = React.useState<'light' | 'dark'>('light')
  const colorMode = React.useMemo(
    () => ({
      toggleColorMode: () => {
        setMode((prevMode) => (prevMode === 'light' ? 'dark' : 'light'))
      },
    }),
    []
  )
  const theme = React.useMemo(
    () =>
      createTheme({
        palette: {
          mode,
        },
      }),
    [mode]
  )

  return (
    <ColorModeContext.Provider value={colorMode}>
      <ThemeProvider theme={theme}>
        <Box sx={{ display: 'flex', width: '100%', minHeight: 'calc(100vh)' }}>
          <CssBaseline />
          <CustomAppBar theme={theme} user={currentUser} />
          <Box
            component="main"
            sx={{
              backgroundColor: (theme) =>
                theme.palette.mode === 'light'
                  ? theme.palette.grey[100]
                  : theme.palette.grey[900],
              flexGrow: 1,
              p: 3,
              overflow: 'auto',
            }}
          >
            <Toolbar />
            <Container
              maxWidth={false}
              sx={{
                maxWidth: '1080px',
              }}
            >
              <Outlet />
            </Container>
          </Box>
        </Box>
      </ThemeProvider>
    </ColorModeContext.Provider>
  )
}
