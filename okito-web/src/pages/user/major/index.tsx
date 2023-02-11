import React from 'react'
import { User } from '../../../types/user'
import { UserInfo } from './user-info'
import { ContentList } from './content-list'

interface MajorProps {
  user: User
  currentUser: User | null
}

export const Major = ({ user, currentUser }: MajorProps) => {
  return (
    <>
      <UserInfo user={user} currentUser={currentUser} />
      <ContentList user={user} currentUser={currentUser} />
    </>
  )
}
