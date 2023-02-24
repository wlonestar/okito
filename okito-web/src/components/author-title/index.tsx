import { Grid, Link, Typography } from '@mui/material'
import { formatDateTime } from '../../utils/date'
import { User } from '../../types/user'
import { PointerDivider } from '../divider'
import AuthorAvatar from '../author-avatar'

interface AuthorTitleProps {
  author: User
  viewNum: number
  dateTime?: Date
  width?: number
  height?: number
}

export default function AuthorTitle({
  author,
  viewNum,
  dateTime,
  width = 32,
  height = 32,
}: AuthorTitleProps) {
  const authorAvatar = {
    id: author.id,
    username: author.username,
    avatar: author.avatar,
  }

  return (
    <Grid container spacing={2}>
      <Grid item>
        <AuthorAvatar author={authorAvatar} width={width} height={height} />
      </Grid>
      <Grid item xs={12} sm container>
        <Grid item xs container direction="column" spacing={2}>
          <Grid item xs>
            <Link
              underline="none"
              color="text.primary"
              href={`/user/${author.id}`}
              target="_blank"
            >
              <Typography variant="body2" gutterBottom fontWeight="500">
                {author.username}
              </Typography>
            </Link>
            <Typography variant="body2" color="text.secondary">
              <>
                {formatDateTime(dateTime)}
                <PointerDivider />
                {'阅读 '}
                {viewNum}
              </>
            </Typography>
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  )
}
