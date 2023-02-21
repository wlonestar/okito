import { PostCard } from './post-card'
import { Box } from '@mui/material'
import { Post } from '../../types/post'
import { User } from '../../types/user'

interface PostListProps {
  posts: Post[]
  currentUser: User | null
}

export default function PostList({ posts, currentUser }: PostListProps) {
  return (
    <Box>
      {posts.map((post) => (
        <PostCard key={post.id} post={post} currentUser={currentUser} />
      ))}
    </Box>
  )
}
