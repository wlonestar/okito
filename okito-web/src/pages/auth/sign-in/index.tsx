import {
  Box,
  Button,
  Checkbox,
  CssBaseline,
  FormControlLabel,
  Grid,
  Link,
  TextField,
  Typography,
} from '@mui/material'
import Image from '../../../assets/img/background.jpg'
import { siteName } from '../../../consts'
import { FormEvent } from 'react'
import { SignInForm } from '../../../types/sign-in-param'
import { Navigate } from 'react-router-dom'
import { useAuth } from '../../../context/auth-context'

export default function SignInPage() {
  const { login, user } = useAuth()

  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    const data = new FormData(event.currentTarget)
    const loginParam: SignInForm = {
      email: data.get('email')?.toString(),
      password: data.get('password')?.toString(),
      device: 'PC',
    }
    login(loginParam).then(() => {
      window.location.assign('/')
    })
  }

  if (user !== null) {
    return <Navigate replace to="/" />
  } else {
    return (
      <Box
        sx={{
          margin: 0,
          padding: 0,
          width: 'calc(100vw)',
          height: 'calc(100vh)',
          overflow: 'hidden',
          backgroundImage: `url(${Image})`,
          backgroundSize: 'cover',
          backgroundRepeat: 'no-repeat',
        }}
      >
        <Box
          sx={{
            height: 'calc(100% - 42px)',
            alignItems: 'center',
            display: 'flex',
            flex: '1 1',
            flexDirection: 'column',
            justifyContent: 'center',
          }}
        >
          <CssBaseline />
          <Typography variant="body1" fontSize="4rem" sx={{ margin: '0 auto' }}>
            {siteName}
          </Typography>
          <Box
            sx={{
              width: '630px',
              height: '480px',
              borderRadius: '5px',
              backgroundColor: 'rgba(255, 255, 255, 0.85)',
              backdropFilter: 'blur(8px)',
              display: 'flex',
              flexDirection: 'column',
            }}
          >
            <Box
              component="form"
              onSubmit={handleSubmit}
              noValidate
              sx={{ margin: '30px' }}
            >
              <TextField
                margin="normal"
                required
                fullWidth
                id="email"
                label="邮箱"
                name="email"
                autoComplete="email"
                autoFocus
              />
              <TextField
                margin="normal"
                required
                fullWidth
                name="password"
                label="密码"
                type="password"
                id="password"
                autoComplete="current-password"
              />
              <FormControlLabel
                control={<Checkbox value="remember" color="primary" />}
                label="记住我"
              />
              <Button
                type="submit"
                fullWidth
                variant="contained"
                sx={{ mt: 3, mb: 2 }}
              >
                {'登录'}
              </Button>
              <Grid container>
                <Grid item xs>
                  <Link href="#" variant="body2" underline="hover">
                    {'忘记密码？'}
                  </Link>
                </Grid>
                <Grid item>
                  <Link href={'/register'} variant="body2" underline="hover">
                    {'还没有账号？先去注册'}
                  </Link>
                </Grid>
              </Grid>
            </Box>
          </Box>
        </Box>
      </Box>
    )
  }
}
