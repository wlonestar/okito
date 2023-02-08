import { Post } from '../../../types/post'
import { User } from '../../../types/user'
import { Tag } from '../../../types/tag'
import { Box, Grid, Link, Typography } from '@mui/material'
import { formatDateTime } from '../../../utils/date'

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

interface MetaListProps {
  post: Post
  author: User
  tags: Tag[]
}

export const MetaList = ({ post, author, tags }: MetaListProps) => {
  return (
    <Grid item xs={12}>
      <Typography component="div" sx={{ fontSize: 14 }} color="text.secondary">
        {formatDateTime(post.createTime)}
        <CustomDivider />
        <Link
          href={`/user/${author.id}`}
          target="_blank"
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
  )
}
