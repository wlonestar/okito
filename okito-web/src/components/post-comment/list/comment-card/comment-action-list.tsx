import { Box, Button, IconButton, Typography } from '@mui/material'
import { formatDateTime } from '../../../../utils/date'
import { PostComment } from '../../../../types/post-comment'
import ThumbDownOutlinedIcon from '@mui/icons-material/ThumbDownOutlined'
import ThumbUpOutlinedIcon from '@mui/icons-material/ThumbUpOutlined'

interface ActionListProps {
  comment: PostComment
  open: boolean
  toggleOpen: (open: boolean) => void
}

export const CommentActionList = ({
  comment,
  open,
  toggleOpen,
}: ActionListProps) => {
  return (
    <Box sx={{ display: 'inline' }}>
      <ul
        style={{
          display: 'flex',
          alignItems: 'center',
          listStyle: 'none',
          margin: 0,
          padding: 0,
        }}
      >
        <li style={{ marginRight: '20px' }}>
          <Typography color="text.secondary" variant="body2">
            {formatDateTime(comment.uploadTime)}
          </Typography>
        </li>
        <li style={{ marginRight: '20px' }}>
          <IconButton sx={{ ':hover': { backgroundColor: 'rgba(0,0,0,0)' } }}>
            <ThumbUpOutlinedIcon />
          </IconButton>
        </li>
        <li style={{ marginRight: '20px' }}>
          <IconButton sx={{ ':hover': { backgroundColor: 'rgba(0,0,0,0)' } }}>
            <ThumbDownOutlinedIcon />
          </IconButton>
        </li>
        <li>
          <Button
            size="small"
            onClick={() => {
              toggleOpen(open)
            }}
          >
            <Typography variant="body2" color="text.secondary">
              {'回复'}
            </Typography>
          </Button>
        </li>
      </ul>
    </Box>
  )
}
