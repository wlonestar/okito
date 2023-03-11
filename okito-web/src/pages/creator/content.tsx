import { Box, Paper } from '@mui/material'
import { User } from '../../types/user'

interface CreatorContentProps {
  currentUser: User
}

export const CreatorContent = ({ currentUser }: CreatorContentProps) => {
  return (
    <Box sx={{ width: '100%' }}>
      <Paper>{'content'}</Paper>
    </Box>
  )
}
