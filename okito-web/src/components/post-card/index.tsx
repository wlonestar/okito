import {
  Box,
  Card,
  CardContent,
  CardMedia,
  Grid,
  Link,
  Typography,
} from '@mui/material'
import { Post } from '../../types/post'
import { formatDateTime } from '../../utils/date'
import { useState } from 'react'
import { useMount } from '../../utils/hook'
import { selectUserById } from '../../api/user'
import { Tag } from '../../types/tag'
import { selectTagsByPostId } from '../../api/tag'
import { userDefault, User } from '../../types/user'

const CustomDivider = () => {
  return (
    <Box
      component="span"
      sx={{ display: 'inline-block', mx: '6px', transform: 'scale(1.2)' }}
    >
      {'|'}
    </Box>
  )
}

const Pointer = () => {
  return (
    <Box
      component="span"
      sx={{ display: 'inline-block', mx: '6px', transform: 'scale(1.2)' }}
    >
      {'·'}
    </Box>
  )
}

interface PostCardProps {
  post: Post
}

export const PostCard = ({ post }: PostCardProps) => {
  const [author, setAuthor] = useState<User>(userDefault)
  const [tags, setTags] = useState<Tag[]>([])

  useMount(async () => {
    const res1 = await selectUserById(post.authorId)
    setAuthor(res1.data)
    const res2 = await selectTagsByPostId(post.id)
    setTags(res2.data)
  })

  return (
    <Card
      variant="outlined"
      sx={{ borderWidth: '0px 0px thin', borderRadius: 0 }}
    >
      <CardContent>
        <Grid container spacing={1}>
          <Grid item xs={12}>
            <Typography
              component="div"
              sx={{ fontSize: 14 }}
              color="text.secondary"
            >
              {formatDateTime(post.createTime)}
              <CustomDivider />
              <Link
                href={`/user/${author.id}`}
                underline="none"
                color="text.secondary"
              >
                {author.username}
              </Link>
              {tags.length === 0
                ? ''
                : tags.map((tag) => (
                    <Link
                      key={tag.id}
                      href={`/tag/${tag.id}`}
                      underline="none"
                      color="text.secondary"
                    >
                      <Pointer />
                      {tag.name}
                    </Link>
                  ))}
            </Typography>
          </Grid>
          <Grid item xs={12} md={9} lg={9}>
            <Link href={`/post/${post.id}`} underline="none">
              <Typography
                variant="h5"
                component="div"
                fontWeight="500"
                sx={{
                  color: (theme) =>
                    theme.palette.mode === 'light' ? '#000' : '#fff',
                  pb: 1,
                }}
              >
                {post.title}
              </Typography>
            </Link>
            <Typography sx={{ mb: 1.5 }} color="text.secondary">
              {post.summary}
            </Typography>
          </Grid>
          <Grid item xs={12} md={3} lg={3}>
            <CardMedia
              component="img"
              height="120"
              image={post.cover}
              alt="Paella dish"
            />
          </Grid>
        </Grid>
      </CardContent>
    </Card>
  )
}
