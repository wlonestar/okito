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
import { LoginForm } from '../../../types/login-param'
import { login } from '../../../auth-provider'

// TODO
export const LoginPage = () => {
  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    const data = new FormData(event.currentTarget)
    const loginParam: LoginForm = {
      email: data.get('email')?.toString(),
      password: data.get('password')?.toString(),
    }
    // @ts-ignore
    // this.props.history.push('/')
    login(loginParam).then((res) => {
      console.log(res)
    })
  }

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
              label="Email Address"
              name="email"
              autoComplete="email"
              autoFocus
            />
            <TextField
              margin="normal"
              required
              fullWidth
              name="password"
              label="Password"
              type="password"
              id="password"
              autoComplete="current-password"
            />
            <FormControlLabel
              control={<Checkbox value="remember" color="primary" />}
              label="Remember me"
            />
            <Button
              type="submit"
              fullWidth
              variant="contained"
              sx={{ mt: 3, mb: 2 }}
            >
              Sign In
            </Button>
            <Grid container>
              <Grid item xs>
                <Link href="#" variant="body2">
                  Forgot password?
                </Link>
              </Grid>
              <Grid item>
                <Link href="#" variant="body2">
                  {"Don't have an account? Sign Up"}
                </Link>
              </Grid>
            </Grid>
          </Box>
        </Box>
      </Box>
    </Box>
  )
}
