import { Box, Button, ButtonBase, TextField } from '@mui/material'
import React, { FormEvent } from 'react'
import { defaultAvatar } from '../../consts'
import { User } from '../../types/user'
import { PostCommentParam } from '../../types/post-comment'
import { addPostComment } from '../../api/post-comment'

interface ReplyBoxProps {
  currentUser: User | null
  postId: number
  replyCommentId: number | null
}

export default function ReplyBox({
  currentUser,
  postId,
  replyCommentId,
}: ReplyBoxProps) {
  const reply = {
    href: currentUser === null ? '' : currentUser.id,
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
      console.log(commentParam)
      addPostComment(commentParam).then((res) => {
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
