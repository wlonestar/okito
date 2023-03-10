import { Box } from '@mui/material'
import { PostCommentListProps } from './index'
import CommentCard from './comment-card'

export default function CommentList({
  postId,
  postComments,
  currentUser,
}: PostCommentListProps) {
  return (
    <Box>
      {postComments.map((comment) => (
        <CommentCard
          key={comment.id}
          postId={postId}
          comment={comment}
          currentUser={currentUser}
        />
      ))}
    </Box>
  )
}
