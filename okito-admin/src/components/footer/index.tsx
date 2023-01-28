import React from 'react'
import Typography from '@mui/material/Typography'
import Link from '@mui/material/Link'
import { siteName, website } from '../consts'
import { Box, Divider } from '@mui/material'

export function Footer(props: any) {
  return (
    <footer style={{ marginTop: '96px' }}>
      <Divider
        sx={{
          margin: '0px',
          borderWidth: '0px 0px thin',
          borderStyle: 'solid',
          borderColor: 'rgb(231, 235, 240)',
        }}
      />
      <div
        style={{
          margin: '24px 0px 32px',
          display: 'flex',
          justifyContent: 'space-between',
        }}
      >
        <Box />
        <Typography
          variant="body2"
          color="text.secondary"
          align="center"
          {...props}
        >
          {'Copyright © '}
          <Link color="inherit" href={website}>
            {siteName}
          </Link>{' '}
          {new Date().getFullYear()}
          {'.'}
        </Typography>
        <Box />
      </div>
    </footer>
  )
}
