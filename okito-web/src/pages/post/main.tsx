import { Box, Paper } from '@mui/material'
import React from 'react'
import { Post } from '../../types/post'
import { User } from '../../types/user'
import { Category } from '../../types/category'
import { Tag } from '../../types/tag'
import PostComments from '../../components/post/post-comment'
import { PostComment } from '../../types/post-comment'
import PostContent from '../../components/post/post-content'

interface MainProps {
  post: Post
  author: User
  cate: Category
  tags: Tag[]
  comments: PostComment[]
  currentUser: User | null
}

export default function Main({
  post,
  author,
  cate,
  tags,
  comments,
  currentUser,
}: MainProps) {
  return (
    <Box>
      <PostContent
        post={post}
        author={author}
        cate={cate}
        tags={tags}
        currentUser={currentUser}
      />
      <Paper sx={{ mt: 3 }}>
        <Box
          sx={{
            width: '100%',
            borderColor: (theme) =>
              theme.palette.mode === 'light'
                ? 'rgba(231, 235, 240)'
                : 'rgba(194, 224, 255, 0.08)',
            borderStyle: 'solid',
            borderRadius: '5px',
            borderWidth: '1px 1px thin',
            margin: 'auto',
            p: 3,
            maxWidth: '100%',
          }}
        >
          <PostComments
            postId={post.id}
            postComments={comments}
            currentUser={currentUser}
          />
        </Box>
      </Paper>
    </Box>
  )
}
