import React, { SyntheticEvent, useState } from 'react'
import { Box, Paper, Tab, Tabs } from '@mui/material'
import { Post } from '../../types/post'
import {
  selectHot100Posts,
  selectPostsByUserFollowed,
  selectRecommend100Posts,
} from '../../api/post'
import { useMount, useSort } from '../../utils'
import PostList from '../../components/post/post-list'
import { User } from '../../types/user'
import { Link } from 'react-router-dom'

export const HomeIndexTab = () => {
  return <div />
}

export const HomeHotTab = () => {
  return <div />
}

export const HomeFollowTab = () => {
  return <div />
}

const tabs = [
  { index: 0, label: '推荐', path: '/' },
  { index: 1, label: '热门', path: '/hot' },
]

interface MainProps {
  currentUser: User | null
}

export const Main = ({ currentUser }: MainProps) => {
  const [value, setValue] = useState(0)
  const [recommendPosts, setRecommendPosts] = useState<Post[]>([])
  const [hotPosts, setHotPosts] = useState<Post[]>([])
  const [followedPosts, setFollowedPosts] = useState<Post[]>([])
  const [posts, setPosts] = useState<Post[]>(recommendPosts)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      setPosts(recommendPosts)
    } else if (newValue === 1) {
      setPosts(hotPosts)
    } else if (newValue === 2) {
      setPosts(followedPosts)
    }
  }

  useMount(async () => {
    const tab = window.location.pathname.split('/').pop()
    if (tab === '') {
      setValue(0)
    } else if (tab === 'hot') {
      setValue(1)
    } else if (tab === 'follow') {
      setValue(2)
    }

    const recommends = await selectRecommend100Posts()
    if (recommends.status === 20) {
      const posts: Post[] = recommends.data
      setRecommendPosts(posts)
      setPosts(posts)
    }
    const hots = await selectHot100Posts()
    if (hots.status === 20) {
      const posts: Post[] = hots.data
      setHotPosts(posts)
    }
    if (currentUser !== null) {
      const followed = await selectPostsByUserFollowed(currentUser.id)
      if (followed.status === 20) {
        const posts: Post[] = followed.data
        const data = useSort(posts, 'createTime', 'desc')
        setFollowedPosts(data)
      }
    }
  })

  return (
    <Paper>
      <Box sx={{ width: '100%', margin: 'auto' }}>
        <Box sx={{ borderBottom: 1, borderColor: 'divider' }}>
          <Tabs value={value} onChange={handleChange}>
            {tabs.map(({ index, label, path }) => (
              <Tab
                key={index}
                label={label}
                tabIndex={index}
                component={Link}
                to={path}
              />
            ))}
            {currentUser !== null ? (
              <Tab
                key={2}
                label={'关注'}
                tabIndex={2}
                component={Link}
                to={'/follow'}
              />
            ) : (
              ''
            )}
          </Tabs>
        </Box>
        <PostList posts={posts} currentUser={currentUser} />
      </Box>
    </Paper>
  )
}
