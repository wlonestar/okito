import React, { SyntheticEvent, useState } from 'react'
import { Box, Paper, Tab, Tabs } from '@mui/material'
import { tabProps } from '../../components/tab'
import { Post } from '../../types/post'
import { selectRecommend100Posts } from '../../api/post'
import { useMount, useSort } from '../../utils'
import PostList from '../../components/post/post-list'
import { User } from '../../types/user'

const tabs = [
  { index: 0, label: '推荐' },
  { index: 1, label: '最新' },
  { index: 2, label: '热门' },
]

interface MainProps {
  currentUser: User | null
}

export const Main = ({ currentUser }: MainProps) => {
  const [value, setValue] = useState(0)
  const [prevPosts, setPrevPostd] = useState<Post[]>([])
  const [posts, setPosts] = useState<Post[]>([])

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      // const data = useSort(posts, 'id', 'desc')
      // setPosts(data)
    } else if (newValue === 1) {
      const data = useSort([...posts], 'createTime', 'desc')
      setPosts(data)
    } else if (newValue === 2) {
      const data = useSort([...posts], 'viewNum', 'desc')
      setPosts(data)
    }
  }

  useMount(() => {
    selectRecommend100Posts().then((res) => {
      const posts: Post[] = res.data
      setPosts(posts)
    })
  })

  return (
    <Paper>
      <Box sx={{ width: '100%', margin: 'auto' }}>
        <Box sx={{ borderBottom: 1, borderColor: 'divider' }}>
          <Tabs value={value} onChange={handleChange}>
            {tabs.map(({ index, label }) => (
              <Tab key={index} label={label} {...tabProps(index)} />
            ))}
          </Tabs>
        </Box>
        <PostList posts={posts} currentUser={currentUser} />
      </Box>
    </Paper>
  )
}
