import React, { useContext } from 'react'
import { IconButton, Theme } from '@mui/material'
import Brightness7Icon from '@mui/icons-material/Brightness7'
import Brightness4Icon from '@mui/icons-material/Brightness4'
import { ColorModeContext } from '../../layout'

interface DarkIconProps {
  theme: Theme
}

export const DarkIcon = ({ theme }: DarkIconProps) => {
  const colorMode = useContext(ColorModeContext)
  return (
    <IconButton sx={{ ml: 1 }} onClick={colorMode.toggleColorMode}>
      {theme.palette.mode === 'dark' ? (
        <Brightness7Icon />
      ) : (
        <Brightness4Icon />
      )}
    </IconButton>
  )
}
