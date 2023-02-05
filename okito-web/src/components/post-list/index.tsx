import { PostCard } from './post-card'
import { Box } from '@mui/material'
import { Post } from '../../types/post'

interface PostListProps {
  posts: Post[]
}

export const PostList = ({ posts }: PostListProps) => {
  return (
    <Box>
      {posts.map((post) => (
        <PostCard key={post.id} post={post} />
      ))}
    </Box>
  )
}
