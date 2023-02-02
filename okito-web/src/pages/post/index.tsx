import React, { useState } from 'react'
import { useMount } from '../../utils/hook'
import { useParams } from 'react-router-dom'
import { Box, Button, Grid, Paper, Typography } from '@mui/material'
import { Aside } from '../home/aside'
import { Post, postDefault } from '../../types/post'
import { selectPostById } from '../../api/post'
import { AuthorLine } from '../../components/author-line'
import { User, userDefault } from '../../types/user'
import { selectUserById } from '../../api/user'
import { Md2html } from '../../components/md2html'
import { Category, categoryDefault } from '../../types/category'
import { Tag } from '../../types/tag'
import { selectCategoryById } from '../../api/category'
import { selectTagsByPostId } from '../../api/tag'

export const PostPage = () => {
  const { id } = useParams()
  const [post, setPost] = useState<Post>(postDefault)
  const [user, setUser] = useState<User>(userDefault)
  const [cate, setCate] = useState<Category>(categoryDefault)
  const [tags, setTags] = useState<Tag[]>([])

  useMount(async () => {
    console.log(id)
    const res1 = await selectPostById(id as unknown as number)
    setPost(res1.data)
    const res2 = await selectUserById(res1.data.authorId)
    setUser(res2.data)
    const res3 = await selectCategoryById(res1.data.cateId)
    setCate(res3.data)
    const res4 = await selectTagsByPostId(res1.data.id)
    setTags(res4.data)
  })

  return (
    <Grid container spacing={3}>
      <Grid item xs={12} md={9}>
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
            <Typography component="div" sx={{ fontSize: 34, fontWeight: 600 }}>
              {post.title}
            </Typography>
            {/*author*/}
            <AuthorLine
              id={user.id}
              name={user.username}
              avatar={user.avatar}
              dateTime={post.createTime}
              likeNum={user.postLikeNum}
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
            {/*TODO*/}
            {/*category & tags*/}
            <Box pt={1}>
              {'分类：'}
              <Button href={`/category/${cate.id}`}>{cate.name}</Button>
            </Box>
            <Box pt={1}>
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
      </Grid>
      <Grid item xs={12} md={3}>
        <Aside />
      </Grid>
    </Grid>
  )
}
