import { PinComment, PinCommentParam } from '../../../types/pin-comment'
import { Box, Button, IconButton, Typography } from '@mui/material'
import { formatDateTime } from '../../../utils/date'
import ThumbUpOutlinedIcon from '@mui/icons-material/ThumbUpOutlined'
import ThumbDownOutlinedIcon from '@mui/icons-material/ThumbDownOutlined'

interface PinCommentActionListProps {
  comment: PinComment
  open: boolean
  toggleOpen: (open: boolean, commentId: number | null) => void
}

export default function PinCommentActionList({
  comment,
  open,
  toggleOpen,
}: PinCommentActionListProps) {
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
              toggleOpen(open, comment.id)
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
