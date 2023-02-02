import { PostCard } from '../../../../components/post-card'
import { Box } from '@mui/material'
import { useState } from 'react'
import { Post } from '../../../../types/post'
import { selectAllPosts } from '../../../../api/post'
import { useMount } from '../../../../utils/hook'

export const EntityList = () => {
  const [posts, setPosts] = useState<Post[]>([])

  function useAllPosts() {
    selectAllPosts().then((res) => {
      setPosts(res.data)
    })
  }

  useMount(() => {
    useAllPosts()
  })

  return (
    <Box>
      {posts.map((post) => (
        <PostCard key={post.id} post={post} />
      ))}
    </Box>
  )
}
