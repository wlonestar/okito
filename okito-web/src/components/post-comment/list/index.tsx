import { Box } from '@mui/material'
import { PostCommentListProps } from '../index'
import { CommentCard } from './comment-card'

export const CommentList = ({
  postComments,
  currentUser,
}: PostCommentListProps) => {
  return (
    <Box>
      {postComments.map((comment) => (
        <CommentCard key={comment.id} comment={comment} user={currentUser} />
      ))}
    </Box>
  )
}
