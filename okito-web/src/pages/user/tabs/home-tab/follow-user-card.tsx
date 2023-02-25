import { Activity } from '../../../../types/activity'
import { User } from '../../../../types/user'
import { Box, Link, Paper, Typography } from '@mui/material'
import AuthorAvatar from '../../../../components/author-avatar'
import { formatDateTime } from '../../../../utils/date'

interface FollowUserCardProps {
  activity: Activity
  user: User
  followUser: User
}

export const FollowUserCard = ({
  activity,
  user,
  followUser,
}: FollowUserCardProps) => {
  return (
    <Paper>
      <Box sx={{ display: 'flex', alignItems: 'center', p: 2 }}>
        <Box sx={{ display: 'flex', alignItems: 'center' }}>
          <AuthorAvatar
            author={{
              id: user.id,
              username: user.username,
              avatar: user.avatar,
            }}
          />
          <Link
            underline="hover"
            color="text.primary"
            href={`/user/${user.id}`}
            target="_blank"
            sx={{ ml: 2 }}
          >
            <Typography variant="body1" fontWeight={600}>
              {user.username}
            </Typography>
          </Link>
        </Box>
        <Typography sx={{ ml: 1.5, mr: 1.5 }}>{'关注了用户'}</Typography>
        <Box sx={{ display: 'flex', alignItems: 'center' }}>
          <AuthorAvatar
            author={{
              id: followUser.id,
              username: followUser.username,
              avatar: followUser.avatar,
            }}
          />
          <Link
            underline="hover"
            color="text.primary"
            href={`/user/${followUser.id}`}
            target="_blank"
            sx={{ ml: 2 }}
          >
            <Typography variant="body1" fontWeight={600}>
              {followUser.username}
            </Typography>
          </Link>
        </Box>
        <Typography
          variant="body2"
          color="text.secondary"
          sx={{ marginLeft: 'auto' }}
        >
          {formatDateTime(activity.execTime)}
        </Typography>
      </Box>
    </Paper>
  )
}
