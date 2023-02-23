import { Grid } from '@mui/material'
import { User, userDefault } from '../../types/user'
import { useParams } from 'react-router-dom'
import { selectUserById } from '../../api/user'
import React, { useState } from 'react'
import { useMount } from '../../utils/hook'
import Major from './major'
import Sticky from './sticky'
import { countCollectionsByAuthorId } from '../../api/collection'

interface UserPageProps {
  currentUser: User | null
}

export default function UserPage({ currentUser }: UserPageProps) {
  const { id } = useParams()
  const [user, setUser] = useState<User>(userDefault)
  const [collectionsNum, setCollectionsNum] = useState<number>(0)

  useMount(async () => {
    const user = await selectUserById(id as unknown as number)
    if (user.status === 20) {
      setUser(user.data)
    }
    const collections = await countCollectionsByAuthorId(
      id as unknown as number
    )
    if (collections.status === 20) {
      console.log(collections)
      setCollectionsNum(collections.data)
    }
  })

  return (
    <Grid container spacing={3} sx={{ margin: '0 auto', mb: 3 }}>
      <Grid item xs={12} md={8.5}>
        <Major user={user} currentUser={currentUser} />
      </Grid>
      <Grid item xs={12} md={3.5}>
        <Sticky user={user} collectionsNum={collectionsNum} />
      </Grid>
    </Grid>
  )
}
