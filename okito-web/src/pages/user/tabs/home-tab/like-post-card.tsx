import { Activity } from '../../../../types/activity'
import { User } from '../../../../types/user'
import { Post } from '../../../../types/post'
import { Box, Divider, Link, Paper, Typography } from '@mui/material'
import { formatDateTime } from '../../../../utils/date'
import { PostCard } from '../../../../components/post/post-card'

interface LikePostCardProps {
  activity: Activity
  user: User
  post: Post
  currentUser: User | null
}

export const LikePostCard = ({
  activity,
  user,
  post,
  currentUser,
}: LikePostCardProps) => {
  return (
    <Paper>
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
          sx={{ mr: 2 }}
        >
          <Typography variant="body1" fontWeight={600}>
            {user.username}
          </Typography>
        </Link>
        <Typography>{'赞了这篇文章'}</Typography>
        <Typography
          variant="body2"
          color="text.secondary"
          sx={{ marginLeft: 'auto' }}
        >
          {formatDateTime(activity.execTime)}
        </Typography>
      </Box>
      <Divider sx={{ ml: 2, mr: 2 }} />
      <PostCard post={post} currentUser={currentUser} />
    </Paper>
  )
}
