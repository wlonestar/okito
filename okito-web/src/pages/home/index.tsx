import React from 'react'
import { Grid, Paper } from '@mui/material'
import { Aside } from './aside'
import { Main } from './main'

export const HomePage = () => {
  return (
    <Grid container spacing={3}>
      <Grid item xs={12} md={8}>
        <Main />
      </Grid>
      <Grid item xs={12} md={4}>
        <Aside />
      </Grid>
    </Grid>
  )
}
