import { FormEvent } from 'react'
import { Navigate } from 'react-router-dom'
import {
  Box,
  Button,
  CssBaseline,
  Grid,
  Link,
  TextField,
  Typography,
} from '@mui/material'
import Image from '../../../assets/img/background.jpg'
import { siteName } from '../../../consts'
import { useAuth } from '../../../context/auth-context'
import { SignUpForm } from '../../../types/sign-up-param'

export const SignUpPage = () => {
  const { register, user } = useAuth()

  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    const data = new FormData(event.currentTarget)
    const registerParam: SignUpForm = {
      email: data.get('email')?.toString(),
      username: data.get('username')?.toString(),
      password: data.get('password')?.toString(),
    }
    register(registerParam).then(() => {
      window.location.assign('/login')
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
                name="email"
                label="Email Address"
                autoComplete="email"
                autoFocus
              />
              <TextField
                margin="normal"
                required
                fullWidth
                id="username"
                name="username"
                label="Username"
                autoComplete="current-username"
              />
              <TextField
                margin="normal"
                required
                fullWidth
                id="password"
                name="password"
                label="Password"
                type="password"
                autoComplete="current-password"
              />
              {/*<FormControlLabel*/}
              {/*  control={<Checkbox value="remember" color="primary" />}*/}
              {/*  label="Remember me"*/}
              {/*/>*/}
              <Button
                type="submit"
                fullWidth
                variant="contained"
                sx={{ mt: 3, mb: 2 }}
              >
                Sign Up
              </Button>
              <Grid container>
                <Grid item xs>
                  {/*<Link href="#" variant="body2">*/}
                  {/*  Forgot password?*/}
                  {/*</Link>*/}
                </Grid>
                <Grid item>
                  <Link href={'/login'} variant="body2">
                    {'Have an account? Sign In'}
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
