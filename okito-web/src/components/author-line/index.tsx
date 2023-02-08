import { ButtonBase, Grid, Link, Typography } from '@mui/material'
import { formatDateTime } from '../../utils/date'

interface AuthorLineProps {
  id: number
  name?: string
  avatar?: string
  dateTime?: Date
  likeNum?: number
}

export const AuthorLine = ({
  id,
  name,
  avatar,
  dateTime,
  likeNum,
}: AuthorLineProps) => {
  return (
    <Grid container spacing={2} sx={{ pt: 2 }}>
      <Grid item>
        <ButtonBase
          href={`/user/${id}`}
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
            src={avatar}
          />
        </ButtonBase>
      </Grid>
      <Grid item xs={12} sm container>
        <Grid item xs container direction="column" spacing={2}>
          <Grid item xs>
            <Link
              href={`/user/${id}`}
              underline="none"
              sx={{
                color: (theme) =>
                  theme.palette.mode === 'light' ? '#222' : '#ddd',
              }}
            >
              <Typography variant="body2" gutterBottom>
                {name}
              </Typography>
            </Link>
            <Typography variant="body2" color="text.secondary">
              <>
                {formatDateTime(dateTime)}
                {likeNum === 0 ? '' : likeNum}
              </>
            </Typography>
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  )
}
