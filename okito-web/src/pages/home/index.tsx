import React from 'react'
import { Grid } from '@mui/material'
import { Aside } from './aside'
import { Main } from './main'
import { CurrentUserProps } from '../../types/current-user-props'

export default function HomePage({ currentUser }: CurrentUserProps) {
  return (
    <Grid container spacing={3}>
      <Grid item xs={12} md={8}>
        <Main currentUser={currentUser} />
      </Grid>
      <Grid item xs={12} md={4}>
        <Aside />
      </Grid>
    </Grid>
  )
}
