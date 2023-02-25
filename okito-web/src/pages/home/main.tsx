import React, { SyntheticEvent, useState } from 'react'
import { Box, Paper, Tab, Tabs } from '@mui/material'
import { tabProps } from '../../components/tab'
import { Post } from '../../types/post'
import { selectAllPosts } from '../../api/post'
import { useMount, useSort } from '../../utils'
import PostList from '../../components/post/post-list'
import { TabsProp } from '../../types/tabs-prop'
import { CurrentUserProps } from '../../types/current-user-props'

const tabs: TabsProp[] = [
  { index: 0, label: '推荐' },
  { index: 1, label: '最新' },
  { index: 2, label: '热门' },
]

export const Main = ({ currentUser }: CurrentUserProps) => {
  const [value, setValue] = useState(0)
  const [posts, setPosts] = useState<Post[]>([])

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      const data = useSort(posts, 'id', 'desc')
      setPosts(data)
    } else if (newValue === 1) {
      const data = useSort(posts, 'createTime', 'desc')
      setPosts(data)
    } else if (newValue === 2) {
      const data = useSort(posts, 'viewNum', 'desc')
      setPosts(data)
    }
  }

  const useAllPosts = () => {
    return selectAllPosts()
  }

  useMount(() => {
    useAllPosts().then((res) => {
      const posts: Post[] = res.data
      const data = useSort(posts, 'id', 'desc')
      setPosts(data)
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
