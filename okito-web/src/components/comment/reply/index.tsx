import { Box, Button, ButtonBase, TextField } from '@mui/material'
import React from 'react'
import { defaultAvatar } from '../../../consts'

export const ReplyBox = () => {
  return (
    <Box sx={{ mt: 3, mb: 4 }}>
      <ButtonBase
        // TODO: set the current user avatar
        href={`/user/1`}
        target="_blank"
        sx={{ width: 42, height: 42, mr: 2 }}
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
          src={defaultAvatar}
        />
      </ButtonBase>
      <TextField
        variant="outlined"
        multiline
        rows={2}
        placeholder="输入评论"
        sx={{ mr: 2, width: '75%' }}
      />
      <Button variant="contained">{'发送'}</Button>
    </Box>
  )
}
