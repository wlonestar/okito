import { Box, Typography } from '@mui/material'
import { User } from '../../../types/user'

interface SettingsPageProps {
  currentUser: User | null
}

export default function SettingsPage({ currentUser }: SettingsPageProps) {
  return (
    <Box>
      <Typography>{'settings'}</Typography>
    </Box>
  )
}
