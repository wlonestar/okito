import { Navigate } from 'react-router-dom'
import { Box, CssBaseline, Typography } from '@mui/material'
import { siteName } from '../../../consts'
import { useAuth } from '../../../context/auth-context'
import { SignUpCard } from './sign-up-card'
import Image from '../../../assets/img/background.jpg'

export default function SignUpPage() {
  const { register, user } = useAuth()

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
              height: '430px',
              borderRadius: '5px',
              backgroundColor: 'rgba(255, 255, 255, 0.85)',
              backdropFilter: 'blur(8px)',
              display: 'flex',
              flexDirection: 'column',
            }}
          >
            <SignUpCard register={register} />
          </Box>
        </Box>
      </Box>
    )
  }
}
