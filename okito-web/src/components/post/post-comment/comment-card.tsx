import { Box, Collapse, Divider, Grid, Link, Typography } from '@mui/material'
import { PostComment } from '../../../types/post-comment'
import React, { useState } from 'react'
import { User, defaultUser } from '../../../types/user'
import { useMount } from '../../../utils'
import { selectUserById } from '../../../api/user'
import { selectPostCommentsSecondaryById } from '../../../api/post-comment'
import InputBox from './input-box'
import Secondary from './secondary'
import CommentActionList from './comment-action'
import AuthorAvatar from '../../author-avatar'

interface CommentCardProps {
  postId: number
  comment: PostComment
  currentUser: User | null
}

export default function CommentCard({
  postId,
  comment,
  currentUser,
}: CommentCardProps) {
  const [author, setAuthor] = useState<User>(defaultUser)
  const [secondaryComments, setSecondaryComments] = useState<PostComment[]>([])
  const [open, setOpen] = useState<boolean>(false)
  const [replyCommentId, setReplyCommentId] = useState<number | null>(null)

  const toggleOpen = (open: boolean, commentId: number | null) => {
    setOpen(!open)
    setReplyCommentId(commentId)
  }

  useMount(async () => {
    const author = await selectUserById(comment.authorId)
    setAuthor(author.data)
    const comments = await selectPostCommentsSecondaryById(comment.id)
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
                <Typography variant="body2" color="text.secondary" gutterBottom>
                  {author.username}
                </Typography>
              </Link>
              <Typography
                variant="body2"
                lineHeight="1.8"
                sx={{ mt: 1.5, mb: 1.5 }}
              >
                {comment.content}
              </Typography>
              <CommentActionList
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
                    postId={postId}
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
