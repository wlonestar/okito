import React from 'react'
import { ListItemText, ListItemButton } from '@mui/material'

interface CustomListItemProps {
  title: string
}

export const CustomItem = ({ title }: CustomListItemProps) => {
  return (
    <ListItemButton
      href={`/${title}`}
      sx={{
        py: 0,
        borderStyle: 'solid',
        borderRadius: '4px',
        margin: '6px',
        color: (theme) =>
          theme.palette.mode === 'light'
            ? 'rgba(0, 0, 0, 0.8)'
            : 'rgba(255,255,255,.8)',
      }}
    >
      <ListItemText
        primary={title}
        primaryTypographyProps={{
          fontSize: 16,
          fontWeight: 'medium',
          color: (theme) =>
            theme.palette.mode === 'light'
              ? theme.palette.grey[800]
              : theme.palette.grey[200],
        }}
        sx={{
          paddingLeft: '36px',
        }}
      />
    </ListItemButton>
  )
}
