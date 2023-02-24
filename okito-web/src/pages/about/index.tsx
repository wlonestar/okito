import React from 'react'
import { Box, Button, CssBaseline, Typography } from '@mui/material'
import { ReactComponent as Logo } from '../../assets/okito_48.svg'
import Image from '../../assets/img/background.jpg'

export default function AboutPage() {
  return (
    <Box
      sx={{
        margin: 0,
        padding: 0,
        overflow: 'hidden',
        backgroundImage: `url(${Image})`,
        backgroundSize: 'auto 100vh',
        backgroundRepeat: 'no-repeat',
      }}
    >
      <CssBaseline />
      <Box
        sx={{
          height: '100vh',
          display: 'flex',
          alignItems: 'center',
          textAlign: 'center',
          justifyContent: 'center',
        }}
      >
        <Box>
          <Box
            sx={{
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              pb: 2,
            }}
          >
            <Logo style={{ marginRight: '30px', transform: 'scale(1.6)' }} />
            <Typography variant="h1" fontWeight={500} color="white">
              {'okito'}
            </Typography>
          </Box>
          <Typography variant="subtitle1" color="white" sx={{ pb: 2 }}>
            {'简洁且轻量的开发者平台'}
          </Typography>
          <Typography color="white" sx={{ pb: 2 }}>
            {'A Simple and Lightweight Developer Community'}
          </Typography>
          <Box sx={{ display: 'flex', justifyContent: 'space-evenly' }}>
            <Button variant="contained" size="large" href={'/'} target="_blank">
              <Typography color="white">{'访问官网'}</Typography>
            </Button>
            <Button
              variant="contained"
              size="large"
              href={'https://github.com/wlonestar/okito'}
              target="_blank"
            >
              <Typography color="white">{'GitHub'}</Typography>
            </Button>
          </Box>
        </Box>
      </Box>
      <Box
        sx={{
          height: '100vh',
          display: 'flex',
          alignItems: 'center',
          textAlign: 'center',
          justifyContent: 'center',
          backgroundColor: '#f8f9fa',
        }}
      >
        <Box>
          <Typography variant="h4" sx={{ pb: 3 }}>
            {'联系我'}
          </Typography>
          <Typography variant="body1" color="text.secondary">
            {'邮箱: wlonestar@163.com'}
          </Typography>
        </Box>
      </Box>
    </Box>
  )
}
