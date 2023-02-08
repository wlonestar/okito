import { Post } from '../../../types/post'
import { Box, Grid, Icon, Link, Typography } from '@mui/material'
import VisibilityOutlinedIcon from '@mui/icons-material/VisibilityOutlined'
import ThumbUpOutlinedIcon from '@mui/icons-material/ThumbUpOutlined'
import CommentOutlinedIcon from '@mui/icons-material/CommentOutlined'

interface ActionListProps {
  post: Post
  commentsNum: number
}

export const ActionList = ({ post, commentsNum }: ActionListProps) => {
  return (
    <Grid container>
      <Grid item xs={3} md={3}>
        <Box
          color="text.secondary"
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
            cursor: 'unset',
          }}
        >
          <Icon sx={{ pr: 4 }}>
            <VisibilityOutlinedIcon />
          </Icon>
          <Typography color="text.secondary">{post.viewNum}</Typography>
        </Box>
      </Grid>
      <Grid item xs={3} md={3}>
        <Link
          underline="none"
          color="text.secondary"
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
          }}
        >
          <Icon sx={{ pr: 4 }}>
            <ThumbUpOutlinedIcon />
          </Icon>
          <Typography>{post.likeNum}</Typography>
        </Link>
      </Grid>
      <Grid item xs={3} md={3}>
        <Link
          underline="none"
          color="text.secondary"
          sx={{
            display: 'flex',
            pr: 3,
            ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
          }}
          href={`/post/${post.id}`}
          target="_blank"
        >
          <Icon sx={{ pr: 4 }}>
            <CommentOutlinedIcon />
          </Icon>
          <Typography>{commentsNum}</Typography>
        </Link>
      </Grid>
    </Grid>
  )
}
