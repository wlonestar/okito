import React from 'react'
import { drawerWidth } from '../consts'
import { Box, List, Toolbar } from '@mui/material'
import { styled } from '@mui/material/styles'
import { NavList, NavListProps } from './list'

const FireNav = styled(List)<{ component?: React.ElementType }>({
  '& .MuiListItemButton-root': {
    paddingLeft: 24,
    paddingRight: 24,
  },
  '& .MuiListItemIcon-root': {
    minWidth: 0,
    marginRight: 16,
  },
  '& .MuiSvgIcon-root': {
    fontSize: 20,
  },
})

export const Nav = () => {
  const props: NavListProps[] = [
    {
      title: 'Table',
      secondary: 'All Tables in DB',
      items: [
        'category',
        'collection',
        'column',
        'pin',
        'post',
        'role',
        'user',
        'tag',
      ],
    },
  ]

  return (
    <FireNav
      component="nav"
      disablePadding
      sx={{
        width: drawerWidth,
        borderStyle: 'solid',
        borderWidth: '0px thin',
        borderColor: (theme) =>
          theme.palette.mode === 'light'
            ? 'rgba(231, 235, 240)'
            : 'rgba(194, 224, 255, 0.08)',
        flexShrink: 0,
        [`& .MuiDrawer-paper`]: { width: drawerWidth, boxSizing: 'border-box' },
      }}
    >
      <Toolbar />
      <Box sx={{ overflow: 'auto' }}>
        {props.map(({ title, secondary, items }) => (
          <NavList title={title} secondary={secondary} items={items} />
        ))}
      </Box>
    </FireNav>
  )
}
