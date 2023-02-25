import React, { SyntheticEvent, useState } from 'react'
import { Grid } from '@mui/material'
import Main from './main'
import Side from './side'
import { Pin } from '../../types/pin'
import { useMount, useSort } from '../../utils'
import { selectAllPins } from '../../api/pin'
import { User } from '../../types/user'
import Nav from './nav'

interface PinPageProps {
  currentUser: User | null
}

export default function PinPage({ currentUser }: PinPageProps) {
  const [pins, setPins] = useState<Pin[]>([])
  const [value, setValue] = useState(0)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      const data = useSort(pins, 'createTime', 'desc')
      setPins(data)
    } else if (newValue === 1) {
      const data = useSort(pins, 'viewNum', 'desc')
      setPins(data)
    }
  }

  useMount(() => {
    selectAllPins().then((res) => {
      const data: Pin[] = useSort(res.data, 'createTime', 'desc')
      setPins(data)
    })
  })

  return (
    <Grid container spacing={3} sx={{ mt: 1, mb: 3 }}>
      <Grid item xs={12} md={2}>
        <Nav value={value} handleChange={handleChange} />
      </Grid>
      <Grid item xs={12} md={7}>
        <Main pins={pins} currentUser={currentUser} />
      </Grid>
      <Grid item xs={12} md={3}>
        <Side currentUser={currentUser} />
      </Grid>
    </Grid>
  )
}
