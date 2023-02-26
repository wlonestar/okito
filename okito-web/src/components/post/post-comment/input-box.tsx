import { Box, Button, TextField } from '@mui/material'
import React, { FormEvent, useRef, useState } from 'react'
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
  const [disable, setDisable] = useState<boolean>(true)
  const reply = {
    id: currentUser === null ? 0 : currentUser.id,
    username: currentUser === null ? 'default' : currentUser.username,
    avatar: currentUser === null ? defaultAvatar : currentUser.avatar,
  }
  const valueRef = useRef('')

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

  const handleChange = () => {
    // @ts-ignore
    const value = valueRef.current.value
    if (value.trim() !== '') {
      setDisable(false)
    } else {
      setDisable(true)
    }
  }

  return (
    <Box
      component="form"
      onSubmit={handleSubmit}
      noValidate
      sx={{ mt: 3, mb: 4, display: 'flex', alignItems: 'flex-start' }}
    >
      <AuthorAvatar author={reply} />
      <Box sx={{ mr: 2 }} />
      <TextField
        variant="outlined"
        multiline
        rows={2}
        id="content"
        name="content"
        placeholder="输入评论"
        fullWidth
        onChange={handleChange}
        inputRef={valueRef}
      />
      <Button
        variant="contained"
        type="submit"
        sx={{ ml: 2 }}
        disabled={disable}
      >
        {'发送'}
      </Button>
    </Box>
  )
}
