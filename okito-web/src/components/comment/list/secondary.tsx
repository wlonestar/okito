import { Box, Button, ButtonBase, Grid, Link, Typography } from '@mui/material'
import { defaultAvatar } from '../../../consts'
import { formatDateTime } from '../../../utils/date'
import ThumbUpOffAltRoundedIcon from '@mui/icons-material/ThumbUpOffAltRounded'
import ThumbDownOffAltRoundedIcon from '@mui/icons-material/ThumbDownOffAltRounded'
import { PostComment } from '../../../types/post-comment'
import { useState } from 'react'
import { User, userDefault } from '../../../types/user'
import { useMount } from '../../../utils/hook'
import { selectUserById } from '../../../api/user'
import { selectPostCommentById } from '../../../api/post-comment'

const ReplyUserLink = ({ user }: { user: User }) => {
  return (
    <Typography variant="body2" component="span" sx={{ ml: 1.5 }}>
      {'回复'}
      <Link
        href={`/user/${user.id}`}
        target="_blank"
        sx={{ ml: 1.5 }}
        underline="none"
      >
        {`@${user.username}`}
      </Link>
    </Typography>
  )
}

interface SecondaryProps {
  comment: PostComment
  open: boolean
  toggleOpen: (open: boolean) => void
}

export const Secondary = ({ comment, open, toggleOpen }: SecondaryProps) => {
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

  return (
    <Grid
      container
      spacing={2}
      sx={{
        pt: 2,
      }}
    >
      <Grid item>
        <ButtonBase
          href={`/user/${author.id}`}
          target="_blank"
          sx={{ width: 42, height: 42 }}
        >
          <img
            style={{
              margin: 'auto',
              display: 'block',
              maxWidth: '100%',
              maxHeight: '100%',
              borderRadius: '21px',
            }}
            alt="complex"
            src={defaultAvatar}
          />
        </ButtonBase>
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
                href={`/user/1`}
                underline="none"
                sx={{
                  color: (theme) =>
                    theme.palette.mode === 'light' ? '#222' : '#ddd',
                }}
              >
                {author.username}
              </Link>
              {comment.parentId !== null ? (
                <ReplyUserLink user={replyAuthor}></ReplyUserLink>
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
            <Box
              sx={{
                display: 'inline',
              }}
            >
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
                  <ThumbUpOffAltRoundedIcon />
                </li>
                <li style={{ marginRight: '20px' }}>
                  <ThumbDownOffAltRoundedIcon />
                </li>
                <li>
                  <Button
                    size="small"
                    onClick={() => {
                      toggleOpen(open)
                    }}
                  >
                    {'回复'}
                  </Button>
                </li>
              </ul>
            </Box>
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  )
}
