import PostList from '../../../components/post-list'
import { useAuth } from '../../../context/auth-context'
import { useMount } from '../../../utils/hook'
import React, { SyntheticEvent, useState } from 'react'
import { Post } from '../../../types/post'
import { selectPostsByAuthorId } from '../../../api/post'
import { Link, useParams } from 'react-router-dom'
import { Box, Divider, Tab, Tabs } from '@mui/material'

export default function PostsTab() {
  const { id } = useParams()
  const { user } = useAuth()
  const currentUser = user
  const [posts, setPosts] = useState<Post[]>([])
  const [value, setValue] = useState(0)

  const usePosts = (userId: number) => {
    return selectPostsByAuthorId(userId)
  }

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    // console.log(newValue)
    if (newValue === 0) {
      posts.sort((a, b) => (a.viewNum > b.viewNum ? 0 : 1))
      setPosts(posts)
    } else if (newValue === 1) {
      posts.sort((a, b) => (a.createTime > b.createTime ? 0 : 1))
      setPosts(posts)
    }
  }

  useMount(() => {
    usePosts(id as unknown as number).then((res) => {
      if (res.status === 20) {
        const posts: Post[] = res.data
        setPosts(posts)
      }
    })
  })

  return (
    <>
      <Box
        sx={{
          width: '100%',
          display: 'flex',
          alignItems: 'center',
          flexWrap: 'wrap',
        }}
      >
        <Tabs value={value} onChange={handleChange} sx={{ marginLeft: 'auto' }}>
          <Tab
            label={'热门'}
            tabIndex={0}
            component={Link}
            to={`/user/${id}/posts?sort=hot`}
          />
          <Tab
            label={'最新'}
            tabIndex={1}
            component={Link}
            to={`/user/${id}/posts?sort=new`}
          />
        </Tabs>
      </Box>
      <Divider />
      <PostList posts={posts} currentUser={currentUser} />
    </>
  )
}
