import { Activity } from '../../../../types/activity'
import { User } from '../../../../types/user'
import { Box, Link, Paper, Typography } from '@mui/material'
import AuthorAvatar from '../../../../components/author-avatar'
import { formatDateTime } from '../../../../utils/date'
import { Tag } from '../../../../types/tag'

interface FollowTagCardProps {
  activity: Activity
  user: User
  tag: Tag
}

export const FollowTagCard = ({ activity, user, tag }: FollowTagCardProps) => {
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
        <Typography sx={{ ml: 1.5, mr: 1.5 }}>{'关注了收藏夹'}</Typography>
        <Box sx={{ display: 'flex', alignItems: 'center' }}>
          <Link
            underline="hover"
            color="text.primary"
            href={`/collection/${tag.id}`}
            target="_blank"
          >
            <Typography variant="body1" fontWeight={600}>
              {tag.name}
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
