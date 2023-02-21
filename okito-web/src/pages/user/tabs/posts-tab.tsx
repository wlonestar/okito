import React, { SyntheticEvent, useEffect, useState } from 'react'
import PostList from '../../../components/post-list'
import { useAuth } from '../../../context/auth-context'
import { useMount, useSort } from '../../../utils/hook'
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
    if (newValue === 0) {
      const data = useSort(posts, 'viewNum', 'desc')
      setPosts(data)
    } else if (newValue === 1) {
      const data = useSort(posts, 'createTime', 'desc')
      setPosts(data)
    }
  }

  useMount(() => {
    usePosts(id as unknown as number).then((res) => {
      if (res.status === 20) {
        const posts: Post[] = res.data
        const data = useSort(posts, 'viewNum', 'desc')
        setPosts(data)
      }
    })
  })

  useEffect(() => {
    console.log(posts)
  }, [posts])

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
