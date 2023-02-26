import React from 'react'
import { Button } from '@mui/material'

export const UnAuthenticated = () => {
  return (
    <>
      <Button size="small" variant="outlined" href={'/login'}>
        {'登录/注册'}
      </Button>
    </>
  )
}
