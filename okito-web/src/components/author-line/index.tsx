import { ButtonBase, Grid, Typography } from '@mui/material'
import { formatDateTime } from '../../utils/date'

interface AuthorLineProps {
  name?: string
  avatar?: string
  dateTime?: Date
  readNum?: number
}

export const AuthorLine = ({
  name,
  avatar,
  dateTime,
  readNum,
}: AuthorLineProps) => {
  return (
    <Grid
      container
      spacing={2}
      sx={{
        pt: 2,
      }}
    >
      <Grid item>
        <ButtonBase sx={{ width: 42, height: 42 }}>
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
            <Typography variant="body2" gutterBottom>
              {name}
            </Typography>
            <Typography variant="body2" color="text.secondary">
              <>
                {formatDateTime(dateTime)}
                {readNum === 0 ? '' : readNum}
              </>
            </Typography>
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  )
}
