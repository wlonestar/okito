import { Box, Divider, Icon, Paper, Typography } from '@mui/material'
import { User } from '../../types/user'
import ThumbUpIcon from '@mui/icons-material/ThumbUp'
import { VisibilityRounded } from '@mui/icons-material'

interface StickyProps {
  user: User
}

export const Sticky = ({ user }: StickyProps) => {
  return (
    <Paper
      sx={{
        p: 2,
        display: 'flex',
        flexDirection: 'column',
        height: 240,
      }}
    >
      <Box>
        <Typography>{'个人成就'}</Typography>
      </Box>
      <Divider sx={{ mb: 2, mt: 2 }} />
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
          <ThumbUpIcon />
        </Icon>
        <Typography color="text.secondary">{`文章被点赞 ${user.postLikeNum}`}</Typography>
      </Box>
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
          <VisibilityRounded />
        </Icon>
        <Typography color="text.secondary">{`文章被阅读 ${user.postViewNum}`}</Typography>
      </Box>
    </Paper>
  )
}
