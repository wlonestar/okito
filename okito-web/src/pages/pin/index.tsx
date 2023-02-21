import { Grid } from '@mui/material'
import Main from './main'
import Nav from './nav'
import Side from './side'
import { useState } from 'react'
import { Pin } from '../../types/pin'
import { useMount } from '../../utils/hook'
import { selectAllPins } from '../../api/pin'

export default function PinPage() {
  const [pins, setPins] = useState<Pin[]>([])

  useMount(() => {
    selectAllPins().then((res) => {
      setPins(res.data)
    })
  })

  return (
    <Grid container spacing={3} sx={{ margin: '0 auto' }}>
      <Grid item xs={12} md={2}>
        <Nav />
      </Grid>
      <Grid item xs={12} md={7}>
        <Main pins={pins} />
      </Grid>
      <Grid item xs={12} md={3}>
        <Side />
      </Grid>
    </Grid>
  )
}
