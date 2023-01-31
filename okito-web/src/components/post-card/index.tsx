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
  const [author, setAuthor] = useState<string>('')
  const [tags, setTags] = useState<Tag[]>([])

  useMount(() => {
    selectUserById(post.authorId).then((res) => {
      setAuthor(res.data.username)
    })
    selectTagsByPostId(post.id).then((res) => {
      if (res.status === 20) {
        setTags(res.data)
      }
    })
  })

  return (
    <Card variant="outlined" sx={{ borderWidth: '0px 0px thin' }}>
      <CardContent>
        <Grid container>
          <Grid item xs={12} pb={1}>
            <Typography
              component="div"
              sx={{ fontSize: 14 }}
              color="text.secondary"
            >
              {formatDateTime(post.createTime)}
              <CustomDivider />
              <Link href="#" underline="none" color="text.secondary">
                {author}
              </Link>
              {tags.length === 0
                ? ''
                : tags.map((tag) => (
                    <Link
                      key={tag.id}
                      href="#"
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
            <Typography variant="h5" component="div" fontWeight="500">
              {post.title}
            </Typography>
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
