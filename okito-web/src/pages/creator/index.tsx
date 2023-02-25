import { Box, Typography } from '@mui/material'
import { User } from '../../types/user'

interface CreatorPageProps {
  currentUser: User | null
}

export default function CreatorPage({ currentUser }: CreatorPageProps) {
  return (
    <Box>
      <Typography>{'creator'}</Typography>
    </Box>
  )
}
