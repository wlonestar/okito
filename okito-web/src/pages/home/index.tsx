import React from 'react'
import { Grid } from '@mui/material'
import { Aside } from './aside'
import { Main } from './main'
import { UserProps } from '../../types/user-props'

export const HomePage = ({ user }: UserProps) => {
  return (
    <Grid container spacing={3}>
      <Grid item xs={12} md={8}>
        <Main user={user} />
      </Grid>
      <Grid item xs={12} md={4}>
        <Aside />
      </Grid>
    </Grid>
  )
}
