import { Box } from '@mui/material'
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
        <PinCard key={pin.id} pin={pin} currentUser={currentUser} />
      ))}
    </Box>
  )
}
