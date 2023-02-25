import { Grid } from '@mui/material'
import { User, userDefault } from '../../types/user'
import { useParams } from 'react-router-dom'
import { countFollowTagsNumByUserId, selectUserById } from '../../api/user'
import React, { useState } from 'react'
import { useMount } from '../../utils'
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
  const [tagsNum, setTagsNum] = useState<number>(0)
  const [homepage, setHomepage] = useState<boolean>(false)

  useMount(() => {})
  useMount(async () => {
    const userId = id as unknown as number
    if (currentUser !== null && currentUser.id === parseInt(String(userId))) {
      setHomepage(true)
    }
    const user = await selectUserById(userId)
    if (user.status === 20) {
      setUser(user.data)
    }
    const collections = await countCollectionsByAuthorId(userId)
    if (collections.status === 20) {
      setCollectionsNum(collections.data)
    }
    const tags = await countFollowTagsNumByUserId(userId)
    if (tags.status === 20) {
      setTagsNum(tags.data)
    }
  })

  return (
    <Grid container spacing={3} sx={{ mt: 1, mb: 3 }}>
      <Grid item xs={12} md={8.5}>
        <Major user={user} homepage={homepage} currentUser={currentUser} />
      </Grid>
      <Grid item xs={12} md={3.5}>
        <Sticky user={user} collectionsNum={collectionsNum} tagsNum={tagsNum} />
      </Grid>
    </Grid>
  )
}
