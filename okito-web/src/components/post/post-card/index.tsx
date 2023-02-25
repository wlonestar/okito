import {
  Box,
  CardContent,
  CardMedia,
  Divider,
  Grid,
  Link,
  Typography,
} from '@mui/material'
import { Post } from '../../../types/post'
import { useState } from 'react'
import { useMount } from '../../../utils'
import { selectUserById } from '../../../api/user'
import { Tag } from '../../../types/tag'
import { selectTagsByPostId } from '../../../api/tag'
import { userDefault, User } from '../../../types/user'
import { countPostCommentsByPostId } from '../../../api/post-comment'
import PostAction from './post-action'
import PostMeta from './post-meta'

interface PostCardProps {
  post: Post
  currentUser: User | null
}

export const PostCard = ({ post, currentUser }: PostCardProps) => {
  const [author, setAuthor] = useState<User>(userDefault)
  const [tags, setTags] = useState<Tag[]>([])
  const [commentsNum, setCommentsNum] = useState<number>(0)

  useMount(async () => {
    const author = await selectUserById(post.authorId)
    setAuthor(author.data)
    const tags = await selectTagsByPostId(post.id)
    setTags(tags.data)
    const commentNum = await countPostCommentsByPostId(post.id)
    setCommentsNum(commentNum.data)
  })

  return (
    <Box>
      <Box>
        <CardContent>
          <Grid container spacing={1}>
            {/*time, author and tags*/}
            <PostMeta post={post} author={author} tags={tags} />
            {/*title, summary and actions*/}
            <Grid item xs={12} md={9} lg={9}>
              <Link href={`/post/${post.id}`} target="_blank" underline="none">
                <Typography
                  variant="h5"
                  component="div"
                  fontWeight="500"
                  color="text.primary"
                  sx={{ pb: 1 }}
                >
                  {post.title}
                </Typography>
              </Link>
              <Typography sx={{ mb: 1.5 }} color="text.secondary">
                {post.summary}
              </Typography>
              <PostAction
                post={post}
                commentsNum={commentsNum}
                currentUser={currentUser}
              />
            </Grid>
            {/*cover*/}
            <Grid item xs={12} md={3} lg={3}>
              <CardMedia
                component="img"
                height="100"
                image={post.cover}
                alt={post.cover}
                loading="lazy"
              />
            </Grid>
          </Grid>
        </CardContent>
      </Box>
      <Divider sx={{ ml: 2, mr: 2 }} />
    </Box>
  )
}
