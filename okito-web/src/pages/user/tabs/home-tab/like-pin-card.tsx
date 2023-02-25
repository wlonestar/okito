import { Activity } from '../../../../types/activity'
import { User } from '../../../../types/user'
import { Pin } from '../../../../types/pin'
import { Box, Divider, Link, Paper, Typography } from '@mui/material'
import { formatDateTime } from '../../../../utils/date'
import PinCard from '../../../../components/pin/pin-card'

interface LikePinCardProps {
  activity: Activity
  user: User
  pin: Pin
  currentUser: User | null
}

export const LikePinCard = ({
  activity,
  user,
  pin,
  currentUser,
}: LikePinCardProps) => {
  return (
    <Paper sx={{ mt: 2 }}>
      <Box
        sx={{
          display: 'flex',
          alignItems: 'center',
          p: 2,
        }}
      >
        <Link
          underline="hover"
          color="text.primary"
          href={`/user/${user.id}`}
          target="_blank"
          sx={{ mr: 2 }}
        >
          <Typography variant="body1" fontWeight={600}>
            {user.username}
          </Typography>
        </Link>
        <Typography>{'赞了这篇想法'}</Typography>
        <Typography
          variant="body2"
          color="text.secondary"
          sx={{ marginLeft: 'auto' }}
        >
          {formatDateTime(activity.execTime)}
        </Typography>
      </Box>
      <Divider sx={{ ml: 2, mr: 2 }} />
      <PinCard pin={pin} currentUser={currentUser} />
    </Paper>
  )
}
