import React from 'react'
import { User } from '../../../types/user'
import UserInfo from './user-info'
import ContentList from './content-list'
import { Box } from '@mui/material'

interface MajorProps {
  user: User
  homepage: boolean
  currentUser: User | null
}

export default function Major({ user, homepage, currentUser }: MajorProps) {
  return (
    <Box>
      <UserInfo user={user} homepage={homepage} currentUser={currentUser} />
      <ContentList user={user} currentUser={currentUser} />
    </Box>
  )
}
