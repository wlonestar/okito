import React from 'react'
import { IconButton, Link, Typography } from '@mui/material'
import { ReactComponent as Logo } from '../../assets/okito_32.svg'

export default function SiteLogo() {
  return (
    <>
      <IconButton
        href="/"
        sx={{
          pr: '12px',
          mr: '4px',
          ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
        }}
      >
        <Logo />
      </IconButton>
      <Link underline="none" color="inherit" href="/">
        <Typography
          variant="h5"
          noWrap
          component="div"
          sx={{
            display: { xs: 'none', sm: 'block' },
            cursor: 'pointer',
            pr: 2,
          }}
        >
          {'okito'}
        </Typography>
      </Link>
    </>
  )
}
