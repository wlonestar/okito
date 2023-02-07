import React from 'react'
import { Grid } from '@mui/material'
import { Aside } from './aside'
import { Main } from './main'
import { useAuth } from '../../context/auth-context'
import { useMount } from '../../utils/hook'

export const HomePage = () => {
  const { user } = useAuth()

  useMount(() => {
    console.log(user)
  })

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
