import { PinComment } from '../../../types/pin-comment'
import { User, userDefault } from '../../../types/user'
import React, { useState } from 'react'
import { useMount } from '../../../utils'
import { selectUserById } from '../../../api/user'
import { selectPinCommentsSecondaryById } from '../../../api/pin-comment'
import { Box, Collapse, Divider, Grid, Link, Typography } from '@mui/material'
import AuthorAvatar from '../../author-avatar'
import CommentAction from './comment-action'
import Secondary from './secondary'
import InputBox from './input-box'

interface CommentCardProps {
  pinId: number
  comment: PinComment
  currentUser: User | null
}

export default function CommentCard({
  pinId,
  comment,
  currentUser,
}: CommentCardProps) {
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
  })

  const authorAvatar = {
    id: author.id,
    username: author.username,
    avatar: author.avatar,
  }

  return (
    <>
      <Grid container spacing={2} sx={{ pt: 2 }}>
        <Grid item>
          <AuthorAvatar author={authorAvatar} />
        </Grid>
        <Grid item xs={12} sm container>
          <Grid item xs container direction="column" spacing={2}>
            <Grid item xs>
              <Link
                href={`/user/${author.id}`}
                underline="none"
                color="text.primary"
              >
                <Typography variant="body2" color="text.primary" gutterBottom>
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
              <CommentAction
                comment={comment}
                open={open}
                toggleOpen={toggleOpen}
                currentUser={currentUser}
              />
              <Box>
                {secondaryComments.map((comment) => (
                  <Secondary
                    key={comment.id}
                    comment={comment}
                    open={open}
                    toggleOpen={toggleOpen}
                    currentUser={currentUser}
                  />
                ))}
                <Collapse in={open}>
                  <InputBox
                    pinId={pinId}
                    replyCommentId={replyCommentId}
                    currentUser={currentUser}
                  />
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
