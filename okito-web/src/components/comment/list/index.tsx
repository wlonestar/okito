import { Box } from '@mui/material'
import { CommentListProps } from '../index'
import { CommentCard } from './comment-card'

export const CommentList = ({ comments }: CommentListProps) => {
  return (
    <Box>
      {comments.map((comment) => (
        <CommentCard key={comment.id} comment={comment} />
      ))}
    </Box>
  )
}
