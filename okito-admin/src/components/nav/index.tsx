import React from 'react'
import { drawerWidth } from '../consts'
import { Box, Drawer, Toolbar } from '@mui/material'
import { NavList, NavListProps } from './list'

export const Nav = () => {
  const props: NavListProps[] = [
    {
      title: 'Table',
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
    <Drawer
      variant="permanent"
      sx={{
        width: drawerWidth,
        flexShrink: 0,
        [`& .MuiDrawer-paper`]: { width: drawerWidth, boxSizing: 'border-box' },
      }}
    >
      <Toolbar />
      <Box sx={{ overflow: 'auto' }}>
        {props.map(({ title, items }) => (
          <NavList title={title} items={items} />
        ))}
      </Box>
    </Drawer>
  )
}
