import React from 'react'
import { Grid } from '@mui/material'
import { Side } from './side'
import { Main } from './main'
import { CurrentUserProps } from '../../types/current-user-props'

export default function HomePage({ currentUser }: CurrentUserProps) {
  return (
    <Grid
      container
      spacing={3}
      sx={{
        maxWidth: '1080px',
        mt: 1,
        mb: 3,
        marginLeft: 'auto',
        marginRight: 'auto',
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
