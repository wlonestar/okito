import { PinComment } from '../../../types/pin-comment'
import { User, userDefault } from '../../../types/user'
import { useState } from 'react'
import { useMount } from '../../../utils/hook'
import { selectUserById } from '../../../api/user'
import { selectPinCommentsSecondaryById } from '../../../api/pin-comment'
import { Box, Collapse, Divider, Grid, Link, Typography } from '@mui/material'
import CommentImage from '../../post-comment/list/comment-card/comment-image'
import PinCommentActionList from './action-list'

interface CommentCardProps {
  pinId: number
  comment: PinComment
  currentUser: User | null
}

function CommentCard({ pinId, comment, currentUser }: CommentCardProps) {
  const [author, setAuthor] = useState<User>(userDefault)
  const [secondaryComments, setSecondaryComments] = useState<PinComment[]>([])
  const [open, setOpen] = useState<boolean>(false)
  const [replyCommentId, setReplyCommentId] = useState<number | null>(null)

  const toggleOpen = (open: boolean, commentId: number | null) => {
    setOpen(!open)
    setReplyCommentId(commentId)
  }

  useMount(async () => {
    const author = await selectUserById(comment.authorId)
    setAuthor(author.data)
    const comments = await selectPinCommentsSecondaryById(comment.id)
    setSecondaryComments(comments.data)
    console.log(comments)
  })

  return (
    <>
      <Grid container spacing={2} sx={{ pt: 2 }}>
        <Grid item>
          <CommentImage author={author} />
        </Grid>
        <Grid item xs={12} sm container>
          <Grid item xs container direction="column" spacing={2}>
            <Grid item xs>
              <Link
                href={`/user/${author.id}`}
                underline="none"
                sx={{
                  color: (theme) =>
                    theme.palette.mode === 'light' ? '#222' : '#ddd',
                }}
              >
                <Typography variant="body2" color="text.secondary" gutterBottom>
                  {author.username}
                </Typography>
              </Link>
              <Typography
                variant="body2"
                lineHeight="1.8"
                sx={{ mt: 1.5, mb: 0.5 }}
              >
                {comment.content}
              </Typography>
              <PinCommentActionList
                comment={comment}
                open={open}
                toggleOpen={toggleOpen}
              />
              <Box>
                {/*{secondaryComments.map((comment) => (*/}
                {/*  <Secondary*/}
                {/*    key={comment.id}*/}
                {/*    comment={comment}*/}
                {/*    open={open}*/}
                {/*    toggleOpen={toggleOpen}*/}
                {/*  />*/}
                {/*))}*/}
                <Collapse in={open}>
                  {/*<ReplyBox*/}
                  {/*  currentUser={currentUser}*/}
                  {/*  postId={postId}*/}
                  {/*  replyCommentId={replyCommentId}*/}
                  {/*/>*/}
                </Collapse>
              </Box>
            </Grid>
          </Grid>
        </Grid>
      </Grid>
      <Divider sx={{ mt: 2, mb: 2 }} />
    </>
  )
}

interface CommentListProps {
  pinId: number
  pinComments: PinComment[]
  currentUser: User | null
}

export default function CommentList({
  pinId,
  pinComments,
  currentUser,
}: CommentListProps) {
  return (
    <Box>
      {pinComments.map((comment) => (
        <CommentCard
          pinId={pinId}
          comment={comment}
          currentUser={currentUser}
        />
      ))}
    </Box>
  )
}
