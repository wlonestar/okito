import React, { SyntheticEvent, useState } from 'react'
import { Box, Paper, Tab, Tabs } from '@mui/material'
import { User } from '../../../types/user'
import { TabsProp } from '../../../types/tabs-prop'
import { TabPanel, tabProps } from '../../../components/tab'
import { selectPostsByAuthorId } from '../../../api/post'
import { Post } from '../../../types/post'
import { useMount } from '../../../utils/hook'
import { PostList } from '../../../components/post-list'
import { useParams } from 'react-router-dom'

const tabs: TabsProp[] = [
  {
    index: 0,
    label: '文章',
  },
  {
    index: 1,
    label: '专栏',
  },
  {
    index: 2,
    label: '想法',
  },
  {
    index: 3,
    label: '收藏',
  },
  {
    index: 4,
    label: '关注',
  },
]

interface ContentListProps {
  user: User
  currentUser: User | null
}

export const ContentList = ({ user, currentUser }: ContentListProps) => {
  const { id } = useParams()

  const [value, setValue] = useState(0)
  const [posts, setPosts] = useState<Post[]>([])

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    // TODO: add different request for data
    if (newValue === 0) {
      selectPostsByAuthorId(user.id).then((res) => {
        console.log(res)
        setPosts(res.data)
      })
    }
  }

  const usePosts = (userId: number) => {
    return selectPostsByAuthorId(userId)
  }

  useMount(async () => {
    usePosts(id as unknown as number).then((res) => {
      console.log(res)
      if (res.status === 20) {
        setPosts(res.data)
      }
    })
    // const posts = await usePosts(user.id)
    // setPosts(posts.data)
  })

  return (
    <Paper sx={{ mt: 2 }}>
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
        }}
      >
        <Box sx={{ borderBottom: 1, borderColor: 'divider' }}>
          <Tabs value={value} onChange={handleChange}>
            {tabs.map(({ index, label }) => (
              <Tab key={index} label={label} {...tabProps(index)} />
            ))}
          </Tabs>
        </Box>
        {tabs.map(({ index, label }) => (
          <TabPanel key={index} value={value} index={index}>
            {/*<p>{label}</p>*/}
            <PostList posts={posts} currentUser={currentUser} />
          </TabPanel>
        ))}
      </Box>
    </Paper>
  )
}
