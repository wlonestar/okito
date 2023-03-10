import { Box, Divider, Paper, Typography } from '@mui/material'
import { Pin } from '../../../types/pin'
import { useMount } from '../../../utils'
import { useState } from 'react'
import { User, defaultUser } from '../../../types/user'
import { selectUserById } from '../../../api/user'
import { countPinCommentsByPinId } from '../../../api/pin-comment'
import AuthorTitle from '../../author-title'
import PinAction from './pin-action'
import PinComments from '../pin-comment'

interface PinCardProps {
  pin: Pin
  currentUser: User | null
}

export default function PinCard({ pin, currentUser }: PinCardProps) {
  const [author, setAuthor] = useState<User>(defaultUser)
  const [commentNum, setCommentNum] = useState<number>(0)
  const [open, setOpen] = useState<boolean>(false)

  const toggleOpen = (open: boolean) => {
    setOpen(!open)
  }

  useMount(async () => {
    const author = await selectUserById(pin.authorId)
    setAuthor(author.data)
    const commentNum = await countPinCommentsByPinId(pin.id)
    setCommentNum(commentNum.data)
  })

  return (
    <Box>
      <Paper sx={{ p: 2 }}>
        <AuthorTitle
          author={author}
          viewNum={pin.viewNum}
          dateTime={pin.createTime}
        />
        <Typography variant="body1" sx={{ mt: 2, mb: 2 }}>
          {pin.content}
        </Typography>
        <Divider />
        <PinAction
          pin={pin}
          open={open}
          toggleOpen={toggleOpen}
          commentNum={commentNum}
          currentUser={currentUser}
        />
        <PinComments
          open={open}
          pinId={pin.id}
          replyCommentId={null}
          currentUser={currentUser}
        />
      </Paper>
    </Box>
  )
}
