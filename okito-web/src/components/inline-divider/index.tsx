import { Box } from '@mui/material'

export const VerticalDivider = () => {
  return (
    <Box
      component="span"
      sx={{ display: 'inline-block', mx: '6px', transform: 'scale(1.2)' }}
    >
      {'|'}
    </Box>
  )
}

export const PointerDivider = () => {
  return (
    <Box
      component="span"
      sx={{ display: 'inline-block', mx: '6px', transform: 'scale(1.2)' }}
    >
      {'·'}
    </Box>
  )
}
