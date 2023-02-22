import { ButtonBase, Grid, Link, Typography } from '@mui/material'
import { formatDateTime } from '../../utils/date'
import { User } from '../../types/user'
import { PointerDivider } from '../inline-divider'

export interface AuthorLineProps {
  author: User
  viewNum: number
  dateTime?: Date
}

export default function AuthorLine({
  author,
  viewNum,
  dateTime,
}: AuthorLineProps) {
  return (
    <Grid container spacing={2}>
      <Grid item>
        <ButtonBase
          href={`/user/${author.id}`}
          target="_blank"
          sx={{ width: 42, height: 42 }}
        >
          <img
            style={{
              margin: 'auto',
              display: 'block',
              maxWidth: '100%',
              maxHeight: '100%',
              borderRadius: '21px',
            }}
            alt="complex"
            src={author.avatar}
          />
        </ButtonBase>
      </Grid>
      <Grid item xs={12} sm container>
        <Grid item xs container direction="column" spacing={2}>
          <Grid item xs>
            <Link
              href={`/user/${author.id}`}
              underline="none"
              sx={{
                color: (theme) =>
                  theme.palette.mode === 'light' ? '#222' : '#ddd',
              }}
            >
              <Typography variant="body2" gutterBottom>
                {author.username}
              </Typography>
            </Link>
            <Typography variant="body2" color="text.secondary">
              <>
                {formatDateTime(dateTime)}
                <PointerDivider />
                {'阅读 '}
                {viewNum}
                {/*{author.postLikeNum === 0 ? '' : author.postLikeNum}*/}
              </>
            </Typography>
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  )
}
