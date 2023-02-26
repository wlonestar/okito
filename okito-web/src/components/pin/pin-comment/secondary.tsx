import { useState } from 'react'
import { User, defaultUser } from '../../../types/user'
import { useMount } from '../../../utils'
import { selectUserById } from '../../../api/user'
import { Grid, Link, Typography } from '@mui/material'
import { PinComment } from '../../../types/pin-comment'
import AuthorAvatar from '../../author-avatar'
import { ReplyUserLink } from '../../user/user-link'
import CommentAction from './comment-action'
import { selectPinCommentById } from '../../../api/pin-comment'

interface SecondaryProps {
  comment: PinComment
  open: boolean
  toggleOpen: (open: boolean, commentId: number | null) => void
  currentUser: User | null
}

export default function Secondary({
  comment,
  open,
  toggleOpen,
  currentUser,
}: SecondaryProps) {
  const [author, setAuthor] = useState<User>(defaultUser)
  const [replyAuthor, setReplyAuthor] = useState<User>(defaultUser)

  useMount(async () => {
    const author = await selectUserById(comment.authorId)
    setAuthor(author.data)
    if (comment.parentId !== null) {
      const parentComment = await selectPinCommentById(comment.parentId)
      const replyAuthor = await selectUserById(parentComment.data.authorId)
      setReplyAuthor(replyAuthor.data)
    }
  })

  const authorAvatar = {
    id: author.id,
    username: author.username,
    avatar: author.avatar,
  }

  return (
    <Grid container spacing={2} sx={{ pt: 2 }}>
      <Grid item>
        <AuthorAvatar author={authorAvatar} />
      </Grid>
      <Grid item xs={12} sm container>
        <Grid item xs container direction="column" spacing={2}>
          <Grid item xs>
            <Typography
              variant="body2"
              color="text.secondary"
              gutterBottom
              component="span"
            >
              <Link
                href={`/user/${author.id}`}
                target="_blank"
                underline="none"
                color="text.primary"
              >
                {author.username}
              </Link>
              {comment.parentId !== null ? (
                <ReplyUserLink user={replyAuthor} />
              ) : (
                ''
              )}
            </Typography>
            <Typography
              variant="body2"
              lineHeight="1.8"
              sx={{ mt: 1.5, mb: 1.5 }}
            >
              {comment.content}
            </Typography>
            <CommentAction
              comment={comment}
              open={open}
              toggleOpen={toggleOpen}
              currentUser={currentUser}
            />
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  )
}
