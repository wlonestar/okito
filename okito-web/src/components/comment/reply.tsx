import { Box, Button, ButtonBase, TextField } from '@mui/material'
import React from 'react'
import { defaultAvatar } from '../../consts'
import { UserProps } from '../../types/user-props'

export const ReplyBox = ({ user }: UserProps) => {
  const reply = {
    href: user === null ? '' : user.id,
    username: user === null ? 'default' : user.username,
    avatar: user === null ? defaultAvatar : user.avatar,
  }

  return (
    <Box sx={{ mt: 3, mb: 4 }}>
      <ButtonBase
        href={`/user/${reply.href}`}
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
          alt={reply.username}
          src={reply.avatar}
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
