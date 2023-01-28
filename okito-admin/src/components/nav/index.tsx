import React from 'react'
import { drawerWidth } from '../consts'
import { Box, Toolbar, Drawer } from '@mui/material'
import { NavList } from './list'

export const Nav = () => {
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
        <NavList />
      </Box>
    </Drawer>
  )
}
