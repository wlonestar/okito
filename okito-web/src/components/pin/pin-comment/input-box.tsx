import React, { FormEvent } from 'react'
import { User } from '../../../types/user'
import { defaultAvatar } from '../../../consts'
import { PinCommentParam } from '../../../types/pin-comment'
import { addPinComment } from '../../../api/pin-comment'
import { Box, Button, TextField } from '@mui/material'
import AuthorAvatar from '../../author-avatar'

interface InputBoxProps {
  pinId: number
  replyCommentId: number | null
  currentUser: User | null
}

export default function InputBox({
  pinId,
  replyCommentId,
  currentUser,
}: InputBoxProps) {
  const reply = {
    id: currentUser === null ? 0 : currentUser.id,
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
      addPinComment(commentParam).then((res) => {
        if (res.status !== 20) {
          console.log(res)
        }
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
      <AuthorAvatar author={reply} />
      <TextField
        variant="outlined"
        multiline
        rows={1}
        size="small"
        id="content"
        name="content"
        placeholder="输入评论"
        sx={{ ml: 2, mr: 2, width: '75%' }}
      />
      <Button variant="contained" type="submit">
        {'发送'}
      </Button>
    </Box>
  )
}
