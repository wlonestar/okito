import { Box, Divider, Paper, Typography } from '@mui/material'
import { Pin } from '../../types/pin'
import { useMount } from '../../utils/hook'
import { useState } from 'react'
import { User, userDefault } from '../../types/user'
import { selectUserById } from '../../api/user'
import { countPinCommentsByPinId } from '../../api/pin-comment'
import AuthorLine from '../author-line'
import ActionList from './action-list'

interface PinCardProps {
  pin: Pin
}

export default function PinCard({ pin }: PinCardProps) {
  const [author, setAuthor] = useState<User>(userDefault)
  const [commentNum, setCommentNum] = useState<number>(0)

  useMount(async () => {
    const author = await selectUserById(pin.authorId)
    setAuthor(author.data)
    const commentNum = await countPinCommentsByPinId(pin.id)
    setCommentNum(commentNum.data)
  })

  return (
    <Paper sx={{ mt: 2 }}>
      <Box sx={{ padding: 2 }}>
        <AuthorLine author={author} dateTime={pin.createTime} />
        <Typography variant="body1" sx={{ mt: 2, mb: 2 }}>
          {pin.content}
        </Typography>
        <Divider />
        <ActionList commentNum={commentNum} likeNum={pin.likeNum} />
      </Box>
    </Paper>
  )
}
