import React from 'react'
import { Box, Grid, Tab, Tabs, Toolbar } from '@mui/material'
import { Side } from './side'
import { Main } from './main'
import { User } from '../../types/user'

interface HomePageProps {
  currentUser: User | null
}

export default function HomePage({ currentUser }: HomePageProps) {
  return (
    <Grid
      container
      sx={{
        maxWidth: '1080px',
        mt: 1,
        mb: 3,
        ml: 'auto',
        mr: 'auto',
      }}
    >
      <Grid item xs={12} md={9} sx={{ pl: 1.5, pr: 1.5, pt: 2.5 }}>
        <Main currentUser={currentUser} />
      </Grid>
      <Grid item xs={12} md={3} sx={{ pl: 1.5, pr: 1.5, pt: 2.5 }}>
        <Side />
      </Grid>
    </Grid>
  )
}
