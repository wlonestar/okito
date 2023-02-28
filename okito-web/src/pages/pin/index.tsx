import React, { SyntheticEvent, useState } from 'react'
import { Grid } from '@mui/material'
import Main from './main'
import Side from './side'
import { Pin } from '../../types/pin'
import { useMount, useSort } from '../../utils'
import {
  selectAllPins,
  selectHot100Pins,
  selectPinsByUserFollowed,
} from '../../api/pin'
import { User } from '../../types/user'
import Nav from './nav'

export const PinIndexTab = () => {
  return <div />
}

export const PinHotTab = () => {
  return <div />
}

export const PinFollowTab = () => {
  return <div />
}

interface PinPageProps {
  currentUser: User | null
}

export default function PinPage({ currentUser }: PinPageProps) {
  const [value, setValue] = useState(0)
  const [newPins, setNewPins] = useState<Pin[]>([])
  const [hotPins, setHotPins] = useState<Pin[]>([])
  const [followedPins, setFollowedPins] = useState<Pin[]>([])
  const [pins, setPins] = useState<Pin[]>(newPins)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      setPins(newPins)
    } else if (newValue === 1) {
      setPins(hotPins)
    } else if (newValue === 2) {
      setPins(followedPins)
    }
  }

  useMount(async () => {
    const tab = window.location.pathname.split('/').pop()
    if (tab === '') {
      setValue(0)
    } else if (tab === 'hot') {
      setValue(1)
    } else if (tab === 'follow') {
      setValue(2)
    }

    const news = await selectAllPins()
    if (news.status === 20) {
      const pins: Pin[] = useSort(news.data, 'createTime', 'desc')
      setNewPins(pins)
      setPins(pins)
    }
    const hots = await selectHot100Pins()
    if (hots.status === 20) {
      const pins: Pin[] = hots.data
      setHotPins(pins)
    }
    if (currentUser !== null) {
      const followed = await selectPinsByUserFollowed(currentUser.id)
      if (followed.status === 20) {
        const pins: Pin[] = followed.data
        const data = useSort(pins, 'createTime', 'desc')
        setFollowedPins(data)
      }
    }
  })

  return (
    <Grid container spacing={3} sx={{ mt: 1, mb: 3 }}>
      <Grid item xs={12} md={2}>
        <Nav
          value={value}
          handleChange={handleChange}
          currentUser={currentUser}
        />
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
