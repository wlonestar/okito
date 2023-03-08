import {
  Box,
  Container,
  createTheme,
  CssBaseline,
  ThemeProvider,
  Toolbar,
  Typography,
} from '@mui/material'
import { User } from '../../types/user'
import { ColorMode } from '../../consts'
import React, { useMemo, useState } from 'react'
import { CreatorAppBar } from '../../components/creator/appbar'
import { ColorModeContext } from '../../layout'

interface CreatorPageProps {
  currentUser: User | null
}

export default function CreatorPage({ currentUser }: CreatorPageProps) {
  let defaultMode: ColorMode = 'light'
  if (
    window.matchMedia &&
    window.matchMedia('(prefers-color-scheme: dark)').matches
  ) {
    defaultMode = 'dark'
  }

  const [mode, setMode] = useState<ColorMode>(defaultMode)
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
          <CreatorAppBar theme={theme} user={currentUser} />
          <Box
            component="main"
            sx={{
              backgroundColor: (theme) =>
                theme.palette.mode === 'light'
                  ? theme.palette.grey[100]
                  : theme.palette.grey[900],
              flexGrow: 1,
              overflow: 'auto',
            }}
          >
            <Toolbar />
            <Container maxWidth={false} sx={{ maxWidth: '1200px' }}>
              {/*<Outlet />*/}
              <Box
                sx={{
                  display: 'flex',
                  alignItems: 'center',
                  justifyContent: 'center',
                  mt: 4,
                }}
              >
                <Typography>{'这片区域以后再来探索吧'}</Typography>
              </Box>
            </Container>
          </Box>
        </Box>
      </ThemeProvider>
    </ColorModeContext.Provider>
  )
}
