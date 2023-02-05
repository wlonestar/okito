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
import { CommentBox } from '../../components/comment'
import { PostComment } from '../../types/post-comment'
import { selectPostCommentsByPostId } from '../../api/post-comment'

export const PostPage = () => {
  const { id } = useParams()
  const [post, setPost] = useState<Post>(postDefault)
  const [user, setUser] = useState<User>(userDefault)
  const [cate, setCate] = useState<Category>(categoryDefault)
  const [tags, setTags] = useState<Tag[]>([])
  const [comments, setComments] = useState<PostComment[]>([])

  useMount(async () => {
    console.log(id)
    const post = await selectPostById(id as unknown as number)
    setPost(post.data)
    const user = await selectUserById(post.data.authorId)
    setUser(user.data)
    const cate = await selectCategoryById(post.data.cateId)
    setCate(cate.data)
    const tags = await selectTagsByPostId(post.data.id)
    setTags(tags.data)
    const commentsData = await selectPostCommentsByPostId(post.data.id)
    const comments = commentsData.data.filter(
      (comment: PostComment) => comment.parentId === null
    )
    setComments(comments)
    console.log(comments)
  })

  return (
    <Grid container spacing={3}>
      <Grid item xs={12} md={9}>
        {/*post*/}
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
        {/*comments*/}
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
            <CommentBox comments={comments} />
          </Box>
        </Paper>
      </Grid>
      <Grid item xs={12} md={3}>
        <Aside />
      </Grid>
    </Grid>
  )
}
