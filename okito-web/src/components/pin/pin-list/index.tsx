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
        <Box key={pin.id} sx={{ mt: 2 }}>
          <PinCard pin={pin} currentUser={currentUser} />
        </Box>
      ))}
    </Box>
  )
}
