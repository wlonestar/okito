import { PostCard } from '../post-card'
import { Box } from '@mui/material'
import { useState } from 'react'
import { Post } from '../../types/post'
import { selectAllPosts } from '../../api/post'
import { useMount } from '../../utils/hook'

export const EntityList = () => {
  const [posts, setPosts] = useState<Post[]>([])

  function useAllPosts() {
    selectAllPosts().then((res) => {
      console.log(res.data)
      setPosts(res.data)
    })
  }

  useMount(() => {
    useAllPosts()
  })

  return (
    <Box>
      {posts.map((post) => (
        <PostCard key={'posts-' + post.id} post={post} />
      ))}
    </Box>
  )
}
