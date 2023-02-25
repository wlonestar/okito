import { useState } from 'react'
import {
  Box,
  Button,
  CssBaseline,
  Dialog,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  Typography,
} from '@mui/material'
import { siteName } from '../../../consts'
import { Navigate } from 'react-router-dom'
import { useAuth } from '../../../context/auth-context'
import { SignInCard } from './sign-in-card'
import Image from '../../../assets/img/background.jpg'

interface LoginFailAlertProps {
  open: boolean
  handleClose: () => void
}

const LoginFailAlert = ({ open, handleClose }: LoginFailAlertProps) => {
  return (
    <Dialog open={open} onClose={handleClose}>
      <DialogTitle>{'登录失败'}</DialogTitle>
      <DialogContent>
        <DialogContentText>{'请检查邮箱或密码是否正确'}</DialogContentText>
      </DialogContent>
      <DialogActions>
        <Button onClick={handleClose} autoFocus>
          {'重试'}
        </Button>
      </DialogActions>
    </Dialog>
  )
}

export default function SignInPage() {
  const { login, user } = useAuth()
  const [open, setOpen] = useState(false)

  const handleOpen = () => {
    setOpen(true)
  }

  const handleClose = () => {
    setOpen(false)
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
          zIndex: 1,
        }}
      >
        <Box
          sx={{
            height: 'calc(100% - 42px)',
            alignItems: 'center',
            display: 'flex',
            flexDirection: 'column',
            justifyContent: 'center',
          }}
        >
          <CssBaseline />
          <Typography variant="body1" fontSize="4rem" sx={{ margin: '0 auto' }}>
            {siteName}
          </Typography>
          <LoginFailAlert open={open} handleClose={handleClose} />
          <Box
            sx={{
              width: '630px',
              height: '400px',
              borderRadius: '5px',
              backgroundColor: 'rgba(255, 255, 255, 0.85)',
              backdropFilter: 'blur(8px)',
              display: 'flex',
              flexDirection: 'column',
            }}
          >
            <SignInCard login={login} handleOpen={handleOpen} />
          </Box>
        </Box>
      </Box>
    )
  }
}
