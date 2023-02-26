import React from 'react'
import { Grid } from '@mui/material'
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
      spacing={3}
      sx={{
        maxWidth: '1080px',
        mt: 1,
        mb: 3,
        ml: 'auto',
        mr: 'auto',
      }}
    >
      <Grid item xs={12} md={9}>
        <Main currentUser={currentUser} />
      </Grid>
      <Grid item xs={12} md={3}>
        <Side />
      </Grid>
    </Grid>
  )
}
