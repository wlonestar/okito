import { User } from '../../../types/user'
import { Box, Button, Link, Typography } from '@mui/material'
import AuthorAvatar from '../../../components/author-avatar'
import React from 'react'

interface AuthorCardProps {
  author: User
  show: boolean
  followed: boolean
  handleClickFollow: () => void
}

export const AuthorCard = ({
  author,
  show,
  followed,
  handleClickFollow,
}: AuthorCardProps) => {
  return (
    <Box>
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
    </Box>
  )
}
