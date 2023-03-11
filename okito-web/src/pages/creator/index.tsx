import {
  Box,
  Container,
  createTheme,
  CssBaseline,
  ThemeProvider,
  Toolbar,
} from '@mui/material'
import { User } from '../../types/user'
import { ColorMode } from '../../consts'
import React, { useMemo, useState } from 'react'
import { CreatorAppBar } from './appbar'
import { ColorModeContext } from '../../layout'
import { CreatorNav } from './nav'
import { CreatorContent } from './content'

interface CreatorPageProps {
  currentUser: User
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
              <Box
                sx={{
                  maxWidth: '1080px',
                  margin: '0 auto 24px auto',
                  display: 'flex',
                }}
              >
                <Box sx={{ padding: '24px 12px 24px 12px', minWidth: '260px' }}>
                  <CreatorNav currentUser={currentUser} />
                </Box>
                <Box sx={{ padding: '24px 12px 24px 12px', width: '820px' }}>
                  <CreatorContent currentUser={currentUser} />
                </Box>
              </Box>
            </Container>
          </Box>
        </Box>
      </ThemeProvider>
    </ColorModeContext.Provider>
  )
}
