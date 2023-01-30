import React from 'react'
import { CustomItem } from '../items'
import { ListItemButton, ListItemText, Box } from '@mui/material'
import { Storage, KeyboardArrowDown } from '@mui/icons-material'

export interface NavListProps {
  title: string
  items: string[]
}

export const NavList = ({ title, items }: NavListProps) => {
  const [open, setOpen] = React.useState(true)

  return (
    <>
      <ListItemButton
        alignItems="flex-start"
        onClick={() => setOpen(!open)}
        sx={{
          borderStyle: 'solid',
          borderRadius: '4px',
          margin: '6px',
        }}
      >
        <Box
          sx={{
            display: 'flex',
            height: '100%',
            marginRight: '12px',
          }}
        >
          <Storage color="primary" />
        </Box>
        <ListItemText
          primary={title}
          primaryTypographyProps={{
            fontSize: 16,
            fontWeight: 'medium',
            color: (theme) =>
              theme.palette.mode === 'light'
                ? theme.palette.grey[700]
                : theme.palette.grey[300],
          }}
          sx={{ my: 0 }}
        />
        <KeyboardArrowDown
          color="primary"
          sx={{
            mr: -1,
            transform: open ? 'rotate(-180deg)' : 'rotate(0)',
            transition: '0.2s',
          }}
        />
      </ListItemButton>
      {open && items.map((title) => <CustomItem key={title} title={title} />)}
    </>
  )
}
