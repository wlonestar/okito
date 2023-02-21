import React, { createContext, useMemo, useState } from 'react'
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

export const ColorModeContext = createContext({
  toggleColorMode: () => {},
})

type colorMode = 'light' | 'dark'

export const Layout = ({ currentUser }: CurrentUserProps) => {
  let defaultMode: colorMode = 'light'
  if (
    window.matchMedia &&
    window.matchMedia('(prefers-color-scheme: dark)').matches
  ) {
    defaultMode = 'dark'
  }

  const [mode, setMode] = useState<colorMode>(defaultMode)
  const colorMode = useMemo(
    () => ({
      toggleColorMode: () => {
        setMode((prevMode) => (prevMode === 'light' ? 'dark' : 'light'))
      },
    }),
    []
  )
  const theme = useMemo(
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