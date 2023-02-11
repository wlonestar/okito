import React from 'react'
import {
  Box,
  Button,
  ButtonBase,
  Grid,
  Link,
  Paper,
  styled,
  Typography,
} from '@mui/material'
import { User } from '../../../types/user'

const Img = styled('img')({
  margin: 'auto',
  display: 'block',
  maxWidth: '100%',
  maxHeight: '100%',
})

interface UserInfoProps {
  user: User
  currentUser: User | null
}

export const UserInfo = ({ user, currentUser }: UserInfoProps) => {
  return (
    <Paper>
      <Box
        sx={{
          width: '100%',
          borderColor: (theme) =>
            theme.palette.mode === 'light'
              ? 'rgba(231, 235, 240)'
              : 'rgba(194, 224, 255, 0.08)',
          borderStyle: 'solid',
          borderRadius: '5px',
          borderWidth: '1px 1px thin',
          margin: 'auto',
          p: 2,
        }}
      >
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
              <Grid item xs>
                <Typography gutterBottom variant="subtitle1" component="div">
                  {user.username}
                </Typography>
                <Typography variant="body2" gutterBottom>
                  ID: {user.id}
                </Typography>
                <Typography variant="body2" color="text.secondary">
                  {user.intro || ' '}
                </Typography>
              </Grid>
              <Grid item>
                <Button>{'编辑个人资料'}</Button>
                {/*<Typography sx={{ cursor: 'pointer' }} variant="body2">*/}
                {/*  edit info*/}
                {/*</Typography>*/}
              </Grid>
            </Grid>
            <Grid item>
              {user.homepage ? (
                <Link underline="none" href={user.homepage} target="_blank">
                  <Typography
                    variant="subtitle1"
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
