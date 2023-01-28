import React from 'react'
import { Typography } from '@mui/material'

interface CustomListItemProps {
  title: string
}

export const CustomListItem = ({ title }: CustomListItemProps) => {
  return (
    <li style={{ display: 'block', padding: '2px 0' }}>
      <Typography
        component="a"
        variant="inherit"
        href={`/${title}`}
        sx={{
          margin: 0,
          fontSize: '0.875rem',
          lineHeight: 1.5,
          letterSpacing: 0,
          fontWeight: 500,
          display: 'flex',
          alignItems: 'center',
          borderRadius: '5px',
          outline: 0,
          width: '100%',
          justifyContent: 'flex-start',
          textDecoration: 'none',
          paddingLeft: '31px',
          color: 'rgb(26, 32, 39)',
        }}
      >
        {title}
      </Typography>
    </li>
  )
}
