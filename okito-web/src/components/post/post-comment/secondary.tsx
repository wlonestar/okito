import { Grid, Link, Typography } from '@mui/material'
import { PostComment } from '../../../types/post-comment'
import { useState } from 'react'
import { User, userDefault } from '../../../types/user'
import { useMount } from '../../../utils/hook'
import { selectUserById } from '../../../api/user'
import { selectPostCommentById } from '../../../api/post-comment'
import CommentActionList from './comment-action'
import { ReplyUserLink } from '../../user-link'
import AuthorAvatar from '../../author-avatar'

interface SecondaryProps {
  comment: PostComment
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
  const [author, setAuthor] = useState<User>(userDefault)
  const [replyAuthor, setReplyAuthor] = useState<User>(userDefault)

  useMount(async () => {
    const author = await selectUserById(comment.authorId)
    setAuthor(author.data)
    if (comment.parentId !== null) {
      const parentComment = await selectPostCommentById(comment.parentId)
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
            <CommentActionList
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
