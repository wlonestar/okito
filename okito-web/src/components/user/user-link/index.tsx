import { User } from '../../../types/user'
import { Link, Typography } from '@mui/material'

export const ReplyUserLink = ({ user }: { user: User }) => {
  return (
    <Typography variant="body2" component="span" sx={{ ml: 1.5 }}>
      {'回复'}
      <Link
        href={`/user/${user.id}`}
        target="_blank"
        sx={{ ml: 1.5 }}
        underline="none"
      >
        {`@${user.username}`}
      </Link>
    </Typography>
  )
}
