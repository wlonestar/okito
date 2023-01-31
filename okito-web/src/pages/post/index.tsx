import React, { useState } from 'react'
import { useMount } from '../../utils/hook'
import { useParams } from 'react-router-dom'
import { Box, Button, Grid, Paper, Typography } from '@mui/material'
import { Aside } from '../home/aside'
import { Post } from '../../types/post'
import { selectPostById } from '../../api/post'
import { AuthorLine } from '../../components/author-line'
import { User } from '../../types/user'
import { selectUserById } from '../../api/user'

export const PostPage = () => {
  const { id } = useParams()
  const [post, setPost] = useState<Post>({
    authorId: 0,
    cateId: 0,
    content: '',
    cover: '',
    createTime: new Date(),
    draft: false,
    id: 0,
    likeNum: 0,
    summary: '',
    title: '',
    updateTime: new Date(),
  })
  const [user, setUser] = useState<User>({
    avatar: '',
    bio: '',
    email: '',
    followedNum: 0,
    followerNum: 0,
    homepage: '',
    id: 0,
    intro: '',
    joinTime: new Date(),
    password: '',
    postLikeNum: 0,
    username: '',
  })

  useMount(async () => {
    console.log(id)
    const res1 = await selectPostById(id as unknown as number)
    setPost(res1.data)
    const res2 = await selectUserById(res1.data.authorId)
    setUser(res2.data)
  })

  return (
    <Grid container spacing={3}>
      <Grid item xs={12} md={8}>
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
              name={user.username}
              avatar={user.avatar}
              dateTime={post.createTime}
              readNum={user.postLikeNum}
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
            <Typography
              component="div"
              sx={{ fontSize: 14 }}
              color="text.secondary"
            >
              {post.content}
            </Typography>
            {/*category & tags*/}
            {/*TODO*/}
            <Box pt={1}>
              <Box>
                分类：<Button>分类</Button>
              </Box>
              <Box>
                标签：<Button variant="outlined">分类</Button>
                <Button variant="outlined">分类</Button>
              </Box>
            </Box>
          </Box>
        </Paper>
      </Grid>
      <Grid item xs={12} md={4}>
        <Aside />
      </Grid>
    </Grid>
  )
}
