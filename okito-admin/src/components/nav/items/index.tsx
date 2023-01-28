import React from 'react'
import ListItemText from '@mui/material/ListItemText'
import ListItemButton from '@mui/material/ListItemButton'

interface CustomListItemProps {
  title: string
}

export const CustomItem = ({ title }: CustomListItemProps) => {
  return (
    <ListItemButton
      href={`/${title}`}
      sx={{
        py: 0,
        minHeight: 32,
        color: (theme) =>
          theme.palette.mode === 'light'
            ? 'rgba(0, 0, 0, 0.8)'
            : 'rgba(255,255,255,.8)',
      }}
    >
      <ListItemText
        primary={title}
        primaryTypographyProps={{
          fontSize: 14,
          fontWeight: 'medium',
        }}
      />
    </ListItemButton>
  )
}
