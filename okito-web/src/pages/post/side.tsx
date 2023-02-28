import React from 'react'
import {
  Box,
  Button,
  Divider,
  Icon,
  Link,
  Paper,
  Typography,
} from '@mui/material'
import { User } from '../../types/user'
import AuthorAvatar from '../../components/author-avatar'
import ThumbUpIcon from '@mui/icons-material/ThumbUp'
import { VisibilityRounded } from '@mui/icons-material'
import ThumbUpOutlinedIcon from '@mui/icons-material/ThumbUpOutlined'
import SmsOutlinedIcon from '@mui/icons-material/SmsOutlined'
import StarBorderOutlinedIcon from '@mui/icons-material/StarBorderOutlined'
import MarkdownNavbar from 'markdown-navbar'
import '../../components/md2html/style.scss'

interface SideProps {
  content: string
  likeType: number
  handleClickLike: () => void
  show: boolean
  followed: boolean
  handleClickFollow: () => void
  author: User
}

export default function Side({
  content,
  likeType,
  handleClickLike,
  show,
  followed,
  handleClickFollow,
  author,
}: SideProps) {
  return (
    <Box>
      <Paper>
        <Box sx={{ p: 2, display: 'flex', alignItems: 'center' }}>
          <AuthorAvatar
            author={{
              id: author.id,
              username: author.username,
              avatar: author.avatar,
            }}
            width={48}
            height={48}
          />
          <Link
            underline="none"
            color="text.primary"
            href={`/user/${author.id}`}
            target="_blank"
            sx={{ ml: 2, cursor: 'pointer' }}
          >
            <Typography fontWeight={500}>{author.username}</Typography>
          </Link>
        </Box>
        {show ? (
          <Box
            sx={{
              p: 2,
              pt: 0,
              display: 'flex',
              justifyContent: 'space-around',
            }}
          >
            {followed ? (
              <Button
                color="inherit"
                variant="contained"
                fullWidth
                sx={{ mr: 2 }}
                onClick={handleClickFollow}
              >
                {'已关注'}
              </Button>
            ) : (
              <Button
                variant="contained"
                fullWidth
                sx={{ mr: 2 }}
                onClick={handleClickFollow}
              >
                {'关注'}
              </Button>
            )}
            <Button variant="outlined" fullWidth>
              {'私信'}
            </Button>
          </Box>
        ) : (
          ''
        )}
        <Divider sx={{ ml: 2, mr: 2 }} />
        <Box sx={{ p: 2 }}>
          <Box
            color="text.secondary"
            sx={{
              display: 'flex',
              pr: 3,
              ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
              cursor: 'unset',
            }}
          >
            <Icon sx={{ pr: 4 }}>
              <ThumbUpIcon />
            </Icon>
            <Typography color="text.secondary">{`文章被点赞 ${author.postLikeNum}`}</Typography>
          </Box>
          <Box
            color="text.secondary"
            sx={{
              display: 'flex',
              pr: 3,
              pt: 2,
              ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
              cursor: 'unset',
            }}
          >
            <Icon sx={{ pr: 4 }}>
              <VisibilityRounded />
            </Icon>
            <Typography color="text.secondary">{`文章被阅读 ${author.postViewNum}`}</Typography>
          </Box>
        </Box>
      </Paper>
      <Paper sx={{ mt: 2 }}>
        <Box
          sx={{
            p: 2,
            display: 'flex',
            justifyContent: 'space-evenly',
            alignItems: 'center',
          }}
        >
          <Link
            underline="none"
            color="text.secondary"
            onClick={handleClickLike}
            target="_blank"
            sx={{ display: 'flex' }}
          >
            {likeType === 0 || likeType === 2 ? (
              <ThumbUpOutlinedIcon />
            ) : (
              <ThumbUpIcon color="primary" />
            )}
          </Link>
          <Link
            underline="none"
            color="text.secondary"
            href={'#comment'}
            sx={{ display: 'flex' }}
          >
            <SmsOutlinedIcon />
          </Link>
          <Link
            underline="none"
            color="text.secondary"
            sx={{ display: 'flex' }}
          >
            <StarBorderOutlinedIcon />
          </Link>
        </Box>
      </Paper>
      <Paper sx={{ mt: 2 }}>
        <MarkdownNavbar className="markdown-navbar" source={content} />
      </Paper>
    </Box>
  )
}
