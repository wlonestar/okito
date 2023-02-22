import React, { FormEvent } from 'react'
import { User } from '../../../types/user'
import { defaultAvatar } from '../../../consts'
import { PinCommentParam } from '../../../types/pin-comment'
import { addPinComment } from '../../../api/pin-comment'
import { Box, Button, ButtonBase, TextField } from '@mui/material'

interface PinCommentInputProps {
  pinId: number
  replyCommentId: number | null
  currentUser: User | null
}

export default function PinCommentInput({
  pinId,
  replyCommentId,
  currentUser,
}: PinCommentInputProps) {
  const reply = {
    href: currentUser === null ? '' : currentUser.id,
    username: currentUser === null ? 'default' : currentUser.username,
    avatar: currentUser === null ? defaultAvatar : currentUser.avatar,
  }

  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    if (currentUser !== null) {
      event.preventDefault()
      const data = new FormData(event.currentTarget)
      const commentParam: PinCommentParam = {
        id: 0,
        content: data.get('content')?.toString(),
        uploadTime: new Date(),
        authorId: currentUser.id,
        pinId: pinId,
        parentId: replyCommentId,
      }
      console.log(commentParam)
      addPinComment(commentParam).then((res) => {
        console.log(res)
      })
    } else {
      window.location.assign('/login')
    }
  }

  return (
    <Box
      component="form"
      onSubmit={handleSubmit}
      noValidate
      sx={{ mt: 3, mb: 4 }}
    >
      <ButtonBase
        href={`/user/${reply.href}`}
        target="_blank"
        sx={{ width: 32, height: 32, mr: 2 }}
      >
        <img
          style={{
            margin: 'auto',
            display: 'block',
            maxWidth: '100%',
            maxHeight: '100%',
            borderRadius: '16px',
          }}
          alt={reply.username}
          src={reply.avatar}
        />
      </ButtonBase>
      <TextField
        variant="outlined"
        multiline
        rows={1}
        size="small"
        id="content"
        name="content"
        placeholder="输入评论"
        sx={{ mr: 2, width: '75%' }}
      />
      <Button variant="contained" type="submit">
        {'发送'}
      </Button>
    </Box>
  )
}
