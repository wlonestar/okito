import { Box, Typography } from '@mui/material'
import { User } from '../../types/user'

interface CreatorPageProps {
  currentUser: User | null
}

export default function CreatorPage({ currentUser }: CreatorPageProps) {
  return (
    <Box
      sx={{
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        mt: 4,
      }}
    >
      <Typography>{'这片区域以后再来探索吧'}</Typography>
    </Box>
  )
}
