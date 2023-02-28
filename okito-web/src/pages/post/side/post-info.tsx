import { User } from '../../../types/user'
import { Box, Icon, Typography } from '@mui/material'
import ThumbUpIcon from '@mui/icons-material/ThumbUp'
import { VisibilityRounded } from '@mui/icons-material'
import React from 'react'

export const PostInfo = ({ author }: { author: User }) => {
  return (
    <Box sx={{ p: 2 }}>
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
        <Typography color="text.secondary">{`文章被点赞 ${author.postLikeNum}`}</Typography>
      </Box>
      <Box
        color="text.secondary"
        sx={{
          display: 'flex',
          pr: 3,
          pt: 2,
          ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
          cursor: 'unset',
        }}
      >
        <Icon sx={{ pr: 4 }}>
          <VisibilityRounded />
        </Icon>
        <Typography color="text.secondary">{`文章被阅读 ${author.postViewNum}`}</Typography>
      </Box>
    </Box>
  )
}
