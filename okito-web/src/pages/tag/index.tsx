import { useParams } from 'react-router-dom'
import React, { useState } from 'react'
import { Tag, tagDefault } from '../../types/tag'
import { Post } from '../../types/post'
import { useMount } from '../../utils/hook'
import { selectTagById } from '../../api/tag'
import { selectPostsByTagId } from '../../api/post'
import { Box, Tab, Tabs, Typography } from '@mui/material'
import { PostCard } from '../../components/post-list/post-card'
import { TabPanel, tabProps } from '../../components/tab'

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
  const [tag, setTag] = useState<Tag>(tagDefault)
  const [posts, setPosts] = useState<Post[]>([])

  const [value, setValue] = React.useState(0)
  const handleChange = (event: React.SyntheticEvent, newValue: number) => {
    setValue(newValue)
  }

  useMount(async () => {
    console.log(id)
    const res1 = await selectTagById(id as unknown as number)
    setTag(res1.data)
    const res2 = await selectPostsByTagId(id as unknown as number)
    setPosts(res2.data)
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
          <Tab label="推荐" {...tabProps(0)} />
          <Tab label="关注" {...tabProps(1)} />
          <Tab label="热门" {...tabProps(2)} />
        </Tabs>
      </Box>
      <TabPanel value={value} index={0}>
        <Box>
          {posts.map((post) => (
            <PostCard key={post.id} post={post} />
          ))}
        </Box>
      </TabPanel>
      <TabPanel value={value} index={1}>
        Item Two
      </TabPanel>
      <TabPanel value={value} index={2}>
        Item Three
      </TabPanel>
    </Box>
  )
}
