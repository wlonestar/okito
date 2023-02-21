import React, { useContext } from 'react'
import { IconButton, Theme } from '@mui/material'
import Brightness4OutlinedIcon from '@mui/icons-material/Brightness4Outlined'
import Brightness5OutlinedIcon from '@mui/icons-material/Brightness5Outlined'
import { ColorModeContext } from '../../layout'

interface DarkIconProps {
  theme: Theme
}

export default function DarkIcon({ theme }: DarkIconProps) {
  const colorMode = useContext(ColorModeContext)
  return (
    <IconButton sx={{ ml: 1 }} onClick={colorMode.toggleColorMode}>
      {theme.palette.mode === 'dark' ? (
        <Brightness5OutlinedIcon />
      ) : (
        <Brightness4OutlinedIcon />
      )}
    </IconButton>
  )
}
