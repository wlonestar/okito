import React from 'react'
import { IconButton, Typography } from '@mui/material'
import { ReactComponent as Logo } from '../../../assets/okito_32.svg'

export const SiteLogo = () => {
  return (
    <>
      <IconButton
        href="/"
        sx={{
          paddingRight: '12px',
          marginRight: '4px',
          ':hover': {
            backgroundColor: 'rgba(0, 0, 0, 0)',
          },
        }}
      >
        <Logo />
      </IconButton>
      <Typography
        variant="h5"
        noWrap
        component="div"
        sx={{ display: { xs: 'none', sm: 'block' }, cursor: 'pointer', pr: 2 }}
      >
        okito
      </Typography>
    </>
  )
}
