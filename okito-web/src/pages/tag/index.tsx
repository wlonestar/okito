import { useParams } from 'react-router-dom'
import React, { SyntheticEvent, useState } from 'react'
import { Tag, tagDefault } from '../../types/tag'
import { Post } from '../../types/post'
import { useMount } from '../../utils/hook'
import { selectTagById } from '../../api/tag'
import { selectPostsByTagId } from '../../api/post'
import { Box, Tab, Tabs, Typography } from '@mui/material'
import { PostCard } from '../../components/post-list/post-card'
import { TabPanel, tabProps } from '../../components/tab'
import { TabsProp } from '../../types/tabs-prop'
import { useAuth } from '../../context/auth-context'

const tabs: TabsProp[] = [
  {
    index: 0,
    label: '推荐',
  },
  {
    index: 1,
    label: '最新',
  },
  {
    index: 2,
    label: '最热',
  },
]

interface TagTitleProps {
  tag: Tag
  posts: Post[]
}

const TagTitle = ({ tag, posts }: TagTitleProps) => {
  return (
    <Box sx={{ margin: '0 auto', textAlign: 'center', pt: 5, pb: 5 }}>
      <Typography
        variant="h5"
        component="div"
        sx={{ alignItems: 'center', pb: 1 }}
      >
        {tag.name}
      </Typography>
      <Typography>
        {posts.length}
        {' 文章'}
      </Typography>
    </Box>
  )
}

export const TagPage = () => {
  const { id } = useParams()
  const { user } = useAuth()
  const currentUser = user
  const [tag, setTag] = useState<Tag>(tagDefault)
  const [posts, setPosts] = useState<Post[]>([])
  const [value, setValue] = useState(0)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      posts.sort((a, b) => (a.id > b.id ? 0 : 1))
    } else if (newValue === 1) {
      posts.sort((a, b) => (a.createTime > b.createTime ? 0 : 1))
    } else if (newValue === 2) {
      posts.sort((a, b) => (a.viewNum > b.viewNum ? 0 : 1))
    }
  }

  useMount(async () => {
    console.log(id)
    const tagId = id as unknown as number
    console.log(tagId)
    const tag = await selectTagById(tagId)
    setTag(tag.data)
    const posts = await selectPostsByTagId(tagId)
    setPosts(posts.data)
  })

  return (
    <Box>
      <TagTitle tag={tag} posts={posts} />
      <Box sx={{ pb: 3 }}>
        <img
          style={{
            margin: 'auto',
            display: 'block',
            width: '40px',
            height: '40px',
          }}
          alt="complex"
          src={tag.cover}
        />
      </Box>
      <Box sx={{ borderBottom: 1, borderColor: 'divider', right: '10px' }}>
        <Tabs
          value={value}
          onChange={handleChange}
          aria-label="basic tabs example"
        >
          {tabs.map(({ index, label }) => (
            <Tab key={index} label={label} {...tabProps(index)} />
          ))}
        </Tabs>
      </Box>
      {tabs.map(({ index }) => (
        <TabPanel key={index} value={value} index={index}>
          <Box>
            {posts.map((post) => (
              <PostCard key={post.id} post={post} currentUser={currentUser} />
            ))}
          </Box>
        </TabPanel>
      ))}
    </Box>
  )
}
