import { Post } from '../../../types/post'
import { User } from '../../../types/user'
import { Tag } from '../../../types/tag'
import { Grid, Link, Typography } from '@mui/material'
import { formatDateTime } from '../../../utils/date'
import { VerticalDivider, PointerDivider } from '../../inline-divider'

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
        <VerticalDivider />
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
                <PointerDivider />
                {tag.name}
              </Link>
            ))}
      </Typography>
    </Grid>
  )
}
