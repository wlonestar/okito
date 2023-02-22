import { Grid } from '@mui/material'
import { User, userDefault } from '../../types/user'
import { useParams } from 'react-router-dom'
import { selectUserById } from '../../api/user'
import React, { useState } from 'react'
import { useMount } from '../../utils/hook'
import Major from './major'
import Sticky from './sticky'

interface UserPageProps {
  currentUser: User | null
}

export default function UserPage({ currentUser }: UserPageProps) {
  const { id } = useParams()
  const [user, setUser] = useState<User>(userDefault)

  const useUser = (id: number) => {
    return selectUserById(id)
  }

  useMount(() => {
    console.log(id)
    useUser(id as unknown as number).then((res) => {
      setUser(res.data)
    })
  })

  return (
    <Grid container spacing={3} sx={{ margin: '0 auto', mb: 3 }}>
      <Grid item xs={12} md={8.5}>
        <Major user={user} currentUser={currentUser} />
      </Grid>
      <Grid item xs={12} md={3.5}>
        <Sticky user={user} />
      </Grid>
    </Grid>
  )
}
