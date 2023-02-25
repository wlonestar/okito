import React, { SyntheticEvent, useState } from 'react'
import { useParams } from 'react-router-dom'
import { Tag, tagDefault } from '../../types/tag'
import { Post } from '../../types/post'
import { useMount, useSort } from '../../utils'
import { selectTagById } from '../../api/tag'
import { selectPostsByTagId } from '../../api/post'
import { Box, Tab, Tabs, Typography } from '@mui/material'
import { PostCard } from '../../components/post/post-card'
import { tabProps } from '../../components/tab'
import { TabsProp } from '../../types/tabs-prop'
import { useAuth } from '../../context/auth-context'

const tabs: TabsProp[] = [
  { index: 0, label: '推荐' },
  { index: 1, label: '最新' },
  { index: 2, label: '最热' },
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

export default function TagPage() {
  const { id } = useParams()
  const { user } = useAuth()
  const currentUser = user
  const [tag, setTag] = useState<Tag>(tagDefault)
  const [posts, setPosts] = useState<Post[]>([])
  const [value, setValue] = useState(0)

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
    <Box sx={{ maxWidth: '1080px', mt: 3, mb: 3 }}>
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
        <Tabs value={value} onChange={handleChange}>
          {tabs.map(({ index, label }) => (
            <Tab key={index} label={label} {...tabProps(index)} />
          ))}
        </Tabs>
      </Box>
      {posts.map((post) => (
        <PostCard key={post.id} post={post} currentUser={currentUser} />
      ))}
    </Box>
  )
}
