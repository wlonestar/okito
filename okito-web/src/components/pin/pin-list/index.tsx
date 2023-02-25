import { Box, Paper } from '@mui/material'
import PinCard from '../pin-card'
import { Pin } from '../../../types/pin'
import { User } from '../../../types/user'

interface PinListProps {
  pins: Pin[]
  currentUser: User | null
}

export default function PinList({ pins, currentUser }: PinListProps) {
  return (
    <Box>
      {pins.map((pin) => (
        <Paper key={pin.id}>
          <Box sx={{ mt: 2 }}>
            <PinCard pin={pin} currentUser={currentUser} />
          </Box>
        </Paper>
      ))}
    </Box>
  )
}
