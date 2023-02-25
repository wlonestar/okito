import React, { useState } from 'react'
import {
  Box,
  Button,
  Grid,
  Link,
  Paper,
  styled,
  Typography,
} from '@mui/material'
import { User } from '../../../types/user'
import { useMount } from '../../../utils/hook'

const Img = styled('img')({
  margin: 'auto',
  display: 'block',
  maxWidth: '100%',
  maxHeight: '100%',
})

interface UserInfoProps {
  user: User
  homepage: boolean
  currentUser: User | null
}

export default function UserInfo({
  user,
  homepage,
  currentUser,
}: UserInfoProps) {
  return (
    <Paper>
      <Box sx={{ width: '100%', margin: 'auto', p: 2 }}>
        <Grid container spacing={2}>
          {/*image*/}
          <Grid item>
            <Img
              alt={user.avatar}
              src={user.avatar}
              width={128}
              height={128}
              sx={{ borderRadius: '64px' }}
            />
          </Grid>
          {/*info*/}
          <Grid item xs={12} sm container>
            <Grid item xs container direction="column" spacing={2}>
              <Grid item xs sx={{ ml: 1 }}>
                <Typography
                  gutterBottom
                  variant="h6"
                  fontWeight={600}
                  component="div"
                >
                  {user.username}
                </Typography>
                <Typography variant="body2" gutterBottom>
                  ID: {user.id}
                </Typography>
                <Typography variant="body2" color="text.secondary">
                  {user.bio || ' '}
                </Typography>
              </Grid>
              {homepage ? (
                <Grid item>
                  <Button href="/user/settings" target="_blank">
                    {'编辑个人资料'}
                  </Button>
                </Grid>
              ) : (
                ''
              )}
            </Grid>
            <Grid item>
              {user.homepage ? (
                <Link underline="hover" href={user.homepage} target="_blank">
                  <Typography
                    variant="body2"
                    component="div"
                    color="text.secondary"
                  >
                    {'个人主页'}
                  </Typography>
                </Link>
              ) : (
                ''
              )}
            </Grid>
          </Grid>
        </Grid>
      </Box>
    </Paper>
  )
}
