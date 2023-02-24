import { Box, Button, TextField } from '@mui/material'
import React, { FormEvent } from 'react'
import { defaultAvatar } from '../../../consts'
import { User } from '../../../types/user'
import { PostCommentParam } from '../../../types/post-comment'
import { addPostComment } from '../../../api/post-comment'
import AuthorAvatar from '../../author-avatar'

interface ReplyBoxProps {
  postId: number
  replyCommentId: number | null
  currentUser: User | null
}

export default function InputBox({
  postId,
  replyCommentId,
  currentUser,
}: ReplyBoxProps) {
  const reply = {
    id: currentUser === null ? 0 : currentUser.id,
    username: currentUser === null ? 'default' : currentUser.username,
    avatar: currentUser === null ? defaultAvatar : currentUser.avatar,
  }

  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    if (currentUser !== null) {
      event.preventDefault()
      const data = new FormData(event.currentTarget)
      const commentParam: PostCommentParam = {
        id: 0,
        content: data.get('content')?.toString(),
        uploadTime: new Date(),
        authorId: currentUser.id,
        postId: postId,
        parentId: replyCommentId,
      }
      addPostComment(commentParam).then((res) => {
        if (res.status !== 20) {
          console.log(res)
        }
      })
      window.location.reload()
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
        rows={2}
        id="content"
        name="content"
        placeholder="输入评论"
        sx={{ ml: 1, mr: 2, width: '75%' }}
      />
      <Button variant="contained" type="submit">
        {'发送'}
      </Button>
    </Box>
  )
}
