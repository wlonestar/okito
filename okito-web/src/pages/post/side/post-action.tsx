import React from 'react'
import { DialogProps } from '@mui/material/Dialog'
import { Box, Link } from '@mui/material'
import ThumbUpOutlinedIcon from '@mui/icons-material/ThumbUpOutlined'
import ThumbUpIcon from '@mui/icons-material/ThumbUp'
import SmsOutlinedIcon from '@mui/icons-material/SmsOutlined'
import StarBorderOutlinedIcon from '@mui/icons-material/StarBorderOutlined'

interface PostActionProps {
  likeType: number
  handleClickLike: () => void
  handleClickOpen(scroll: DialogProps['scroll']): () => void
}

export const PostAction = ({
  likeType,
  handleClickLike,
  handleClickOpen,
}: PostActionProps) => {
  return (
    <Box
      sx={{
        p: 2,
        display: 'flex',
        justifyContent: 'space-evenly',
        alignItems: 'center',
      }}
    >
      <Link
        underline="none"
        color="text.secondary"
        onClick={handleClickLike}
        sx={{ display: 'flex' }}
      >
        {likeType === 0 || likeType === 2 ? (
          <ThumbUpOutlinedIcon />
        ) : (
          <ThumbUpIcon color="primary" />
        )}
      </Link>
      <Link
        underline="none"
        color="text.secondary"
        href={'#comment'}
        sx={{ display: 'flex' }}
      >
        <SmsOutlinedIcon />
      </Link>
      <Link
        underline="none"
        color="text.secondary"
        onClick={handleClickOpen('paper')}
        sx={{ display: 'flex' }}
      >
        <StarBorderOutlinedIcon />
      </Link>
    </Box>
  )
}
