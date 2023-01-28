import React from 'react'
import { CustomItem } from '../items'
import ListItemButton from '@mui/material/ListItemButton'
import ListItemText from '@mui/material/ListItemText'
import KeyboardArrowDown from '@mui/icons-material/KeyboardArrowDown'

export interface NavListProps {
  title: string
  secondary: string
  items: string[]
}

export const NavList = ({ title, secondary, items }: NavListProps) => {
  const [open, setOpen] = React.useState(true)

  return (
    <>
      <ListItemButton
        alignItems="flex-start"
        onClick={() => setOpen(!open)}
        sx={{
          px: 3,
          pt: 2.5,
          pb: open ? 0 : 2.5,
          '&:hover, &:focus': { '& svg': { opacity: open ? 1 : 0 } },
        }}
      >
        <ListItemText
          primary={title}
          primaryTypographyProps={{
            fontSize: 15,
            fontWeight: 'medium',
            lineHeight: '20px',
            mb: '2px',
          }}
          secondary={secondary}
          secondaryTypographyProps={{
            noWrap: true,
            fontSize: 12,
            lineHeight: '16px',
            color: (theme) =>
              theme.palette.mode === 'light'
                ? open
                  ? 'rgba(0, 0, 0, 0)'
                  : 'rgba(0, 0, 0, 0.5)'
                : open
                ? 'rgba(0, 0, 0, 0)'
                : 'rgba(255, 255, 255, 0.5)',
          }}
          sx={{ my: 0 }}
        />
        <KeyboardArrowDown
          sx={{
            mr: -1,
            opacity: 0,
            transform: open ? 'rotate(-180deg)' : 'rotate(0)',
            transition: '0.2s',
          }}
        />
      </ListItemButton>
      {open && items.map((title) => <CustomItem title={title} />)}
    </>
  )
}
