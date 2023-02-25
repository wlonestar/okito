import React, { SyntheticEvent, useState } from 'react'
import PostList from '../../../components/post/post-list'
import { useAuth } from '../../../context/auth-context'
import { useMount, useSort } from '../../../utils'
import { Post } from '../../../types/post'
import { selectPostsByAuthorId } from '../../../api/post'
import { Link, useParams } from 'react-router-dom'
import { Box, Divider, Paper, Tab, Tabs } from '@mui/material'

export default function PostsTab() {
  const { id } = useParams()
  const { user } = useAuth()
  const currentUser = user
  const [value, setValue] = useState<number>(0)
  const [posts, setPosts] = useState<Post[]>([])

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      const data = useSort(posts, 'viewNum', 'desc')
      setPosts(data)
    } else if (newValue === 1) {
      const data = useSort(posts, 'createTime', 'desc')
      setPosts(data)
    }
  }

  useMount(() => {
    selectPostsByAuthorId(id as unknown as number).then((res) => {
      if (res.status === 20) {
        const posts: Post[] = res.data
        const data = useSort(posts, 'viewNum', 'desc')
        setPosts(data)
      }
    })
  })

  return (
    <Paper>
      <Box
        sx={{
          width: '100%',
          display: 'flex',
          alignItems: 'center',
          flexWrap: 'wrap',
          borderRadius: '5px',
          borderWidth: '1px 1px thin',
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
    </Paper>
  )
}
