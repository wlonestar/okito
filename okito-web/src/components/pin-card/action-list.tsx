import { Box, Grid, Icon, Typography } from '@mui/material'
import IosShareOutlinedIcon from '@mui/icons-material/IosShareOutlined'
import ThumbUpOutlinedIcon from '@mui/icons-material/ThumbUpOutlined'
import SmsOutlinedIcon from '@mui/icons-material/SmsOutlined'

interface ActionListProps {
  commentNum: number
  likeNum: number
}

export default function ActionList({ commentNum, likeNum }: ActionListProps) {
  return (
    <Grid container sx={{ mt: 2 }}>
      <Grid item xs={3} md={3} sx={{ margin: '0 auto' }}>
        <Box
          color="text.secondary"
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
            cursor: 'unset',
            textAlign: 'center',
            margin: '0 auto',
          }}
        >
          <Icon sx={{ pr: 4 }}>
            <IosShareOutlinedIcon />
          </Icon>
          <Typography color="text.secondary">{'分享'}</Typography>
        </Box>
      </Grid>
      <Grid item xs={3} md={3} sx={{ margin: '0 auto' }}>
        <Box
          color="text.secondary"
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
            cursor: 'unset',
          }}
        >
          <Icon sx={{ pr: 4 }}>
            <SmsOutlinedIcon />
          </Icon>
          <Typography color="text.secondary">{commentNum}</Typography>
        </Box>
      </Grid>
      <Grid item xs={3} md={3} sx={{ margin: '0 auto' }}>
        <Box
          color="text.secondary"
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
            cursor: 'unset',
          }}
        >
          <Icon sx={{ pr: 4 }}>
            <ThumbUpOutlinedIcon />
          </Icon>
          <Typography color="text.secondary">{likeNum}</Typography>
        </Box>
      </Grid>
    </Grid>
  )
}
