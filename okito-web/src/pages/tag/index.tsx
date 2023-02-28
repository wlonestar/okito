import React, { SyntheticEvent, useState } from 'react'
import { useParams } from 'react-router-dom'
import { Tag, defaultTag } from '../../types/tag'
import { Post } from '../../types/post'
import { useMount, useSort } from '../../utils'
import {
  selectTagById,
  selectTagFollowByUserIdAndTagId,
  updateTagFollow,
} from '../../api/tag'
import { selectPostsByTagId } from '../../api/post'
import { Box, Button, Paper, Tab, Tabs, Typography } from '@mui/material'
import { PostCard } from '../../components/post/post-card'
import { tabProps } from '../../components/tab'
import { useAuth } from '../../context/auth-context'

const tabs = [
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
  const [tag, setTag] = useState<Tag>(defaultTag)
  const [posts, setPosts] = useState<Post[]>([])
  const [value, setValue] = useState(0)
  const [followed, setFollowed] = useState<boolean>(false)

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

  const handleClick = () => {
    if (currentUser !== null) {
      updateTagFollow({
        userId: currentUser.id,
        tagId: id as unknown as number,
        follow: !followed,
      }).then((res) => {
        if (res.status === 20) {
          setFollowed(!followed)
        }
      })
    } else {
      window.location.assign('/login')
    }
  }

  useMount(async () => {
    const tagId = id as unknown as number
    const tag = await selectTagById(tagId)
    setTag(tag.data)
    const posts = await selectPostsByTagId(tagId)
    setPosts(posts.data)
    if (currentUser !== null) {
      const follow = await selectTagFollowByUserIdAndTagId({
        userId: currentUser.id,
        tagId: tagId,
      })
      if (follow.status === 20) {
        if (follow.data.follow) {
          setFollowed(true)
        }
      }
    }
  })

  return (
    <Box sx={{ maxWidth: '1080px', m: '0 auto', mt: 3, mb: 3 }}>
      <TagTitle tag={tag} posts={posts} />
      <Box
        sx={{
          display: 'flex',
          alignItems: 'center',
          mb: 2,
        }}
      >
        <img
          style={{
            display: 'block',
            width: '36px',
            height: '36px',
          }}
          alt="complex"
          src={tag.cover}
        />
        <Box sx={{ ml: 3 }}>
          {followed ? (
            <Button variant="contained" color="inherit" onClick={handleClick}>
              {'已关注'}
            </Button>
          ) : (
            <Button variant="contained" onClick={handleClick}>
              {'关注'}
            </Button>
          )}
        </Box>
        <Tabs value={value} onChange={handleChange} sx={{ ml: 'auto' }}>
          {tabs.map(({ index, label }) => (
            <Tab key={index} label={label} {...tabProps(index)} />
          ))}
        </Tabs>
      </Box>
      <Paper>
        {posts.map((post) => (
          <PostCard key={post.id} post={post} currentUser={currentUser} />
        ))}
      </Paper>
    </Box>
  )
}
