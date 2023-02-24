import { Box, Button, Paper, Typography } from '@mui/material'
import AuthorTitle from '../../author-title'
import Md2html from '../../md2html'
import React from 'react'
import { Post } from '../../../types/post'
import { User } from '../../../types/user'
import { Category } from '../../../types/category'
import { Tag } from '../../../types/tag'

interface PostContentProps {
  post: Post
  author: User
  cate: Category
  tags: Tag[]
  currentUser: User | null
}

export default function PostContent({
  post,
  author,
  cate,
  tags,
  currentUser,
}: PostContentProps) {
  return (
    <Paper>
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
        {/*title*/}
        <Typography
          component="div"
          sx={{ fontSize: 34, fontWeight: 600, pb: 2 }}
        >
          {post.title}
        </Typography>
        {/*author*/}
        <AuthorTitle
          author={author}
          viewNum={author.postViewNum}
          dateTime={post.createTime}
          width={48}
          height={48}
        />
        {/*cover*/}
        <Box>
          <img
            style={{
              margin: 'auto',
              display: 'block',
              maxWidth: '100%',
              maxHeight: '100%',
              paddingTop: '10px',
              paddingBottom: '10px',
            }}
            alt="complex"
            src={post.cover}
          />
        </Box>
        {/*content*/}
        <Md2html content={post.content} />
        {/*category & tags*/}
        <Box pt={1}>
          {'分类：'}
          <Button href={`/category/${cate.id}`}>{cate.name}</Button>
        </Box>
        <Box pt={1} hidden={!(tags.length > 0)}>
          {'标签：'}
          {tags.map((tag) => (
            <Button
              key={tag.id}
              href={`/tag/${tag.id}`}
              variant="outlined"
              sx={{ ml: 1 }}
            >
              {tag.name}
            </Button>
          ))}
        </Box>
      </Box>
    </Paper>
  )
}
