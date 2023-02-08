import { Box, Collapse, Divider, Grid, Link, Typography } from '@mui/material'
import { PostComment } from '../../../../types/post-comment'
import { useState } from 'react'
import { User, userDefault } from '../../../../types/user'
import { useMount } from '../../../../utils/hook'
import { selectUserById } from '../../../../api/user'
import { selectPostCommentsSecondaryByPostId } from '../../../../api/post-comment'
import { ReplyBox } from '../../reply'
import { Secondary } from './secondary'
import { CommentActionList } from './comment-action-list'
import { CommentImage } from './comment-image'

interface CommentCardProps {
  comment: PostComment
  user: User | null
}

export const CommentCard = ({ comment, user }: CommentCardProps) => {
  const [author, setAuthor] = useState<User>(userDefault)
  const [secondaryComments, setSecondaryComments] = useState<PostComment[]>([])
  const [open, setOpen] = useState<boolean>(false)

  useMount(async () => {
    const author = await selectUserById(comment.authorId)
    setAuthor(author.data)
    const comments = await selectPostCommentsSecondaryByPostId(comment.id)
    setSecondaryComments(comments.data)
    console.log(comments)
  })

  function toggleOpen(open: boolean) {
    setOpen(!open)
  }

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
                href={`/user/1`}
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
                sx={{ mt: 1.5, mb: 1.5 }}
              >
                {comment.content}
              </Typography>
              <CommentActionList
                comment={comment}
                open={open}
                toggleOpen={toggleOpen}
              />
              <Box>
                {secondaryComments.map((comment) => (
                  <Secondary
                    key={comment.id}
                    comment={comment}
                    open={open}
                    toggleOpen={toggleOpen}
                  />
                ))}
                <Collapse in={open}>
                  <ReplyBox currentUser={user} />
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
