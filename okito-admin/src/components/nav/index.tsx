import React from 'react'
import { drawerWidth } from '../consts'
import { Box, Drawer, Toolbar } from '@mui/material'
import { NavList } from './list'

export const Nav = () => {
  const props = [
    {
      id: 1,
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
        {props.map(({ id, title, items }) => (
          <NavList key={id} title={title} items={items} />
        ))}
      </Box>
    </Drawer>
  )
}
