import React from 'react'
import { mainListItems, secondaryListItems } from './list-items'
import { drawerWidth } from '../consts'
import { Box, Toolbar, Divider, List, Drawer } from '@mui/material'

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
        <List>{mainListItems}</List>
        <Divider sx={{ my: 1 }} />
        <List>{secondaryListItems}</List>
      </Box>
    </Drawer>
  )
}
