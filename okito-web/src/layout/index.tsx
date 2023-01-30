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

export const ColorModeContext = React.createContext({
  toggleColorMode: () => {},
})

export default function Layout() {
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
        <Box sx={{ display: 'flex', width: '100%' }}>
          <CssBaseline />
          <CustomAppBar theme={theme} />
          <Box
            component="main"
            sx={{
              // backgroundColor: (theme) =>
              //   theme.palette.mode === 'light'
              //     ? theme.palette.grey[100]
              //     : theme.palette.grey[900],
              flexGrow: 1,
              p: 3,
              overflow: 'auto',
            }}
          >
            <Toolbar />
            <Container
              maxWidth="lg"
              sx={{
                mt: 4,
                mb: 4,
              }}
            >
              <Outlet />
              {/*<Footer />*/}
            </Container>
          </Box>
        </Box>
      </ThemeProvider>
    </ColorModeContext.Provider>
  )
}
