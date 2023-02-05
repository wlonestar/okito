import {
  Box,
  Button,
  ButtonBase,
  Collapse,
  Divider,
  Grid,
  Link,
  Typography,
} from '@mui/material'
import { formatDateTime } from '../../../../utils/date'
import { defaultAvatar } from '../../../../consts'
import { PostComment } from '../../../../types/post-comment'
import { useState } from 'react'
import { User, userDefault } from '../../../../types/user'
import { useMount } from '../../../../utils/hook'
import { selectUserById } from '../../../../api/user'
import ThumbDownOffAltRoundedIcon from '@mui/icons-material/ThumbDownOffAltRounded'
import ThumbUpOffAltRoundedIcon from '@mui/icons-material/ThumbUpOffAltRounded'
import { selectPostCommentsSecondaryByPostId } from '../../../../api/post-comment'
import { ReplyBox } from '../../reply'
import { Secondary } from '../secondary'

interface CommentCardProps {
  comment: PostComment
}

export const CommentCard = ({ comment }: CommentCardProps) => {
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
                  <ReplyBox />
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
