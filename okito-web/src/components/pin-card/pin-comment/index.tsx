import React, { useState } from 'react'
import { Box, Collapse } from '@mui/material'
import { User } from '../../../types/user'
import PinCommentInput from './comment-input'
import CommentList from './comment-list'
import { PinComment } from '../../../types/pin-comment'
import { useMount } from '../../../utils/hook'
import { selectPinCommentsByPinId } from '../../../api/pin-comment'

interface PinCommentProps {
  open: boolean
  pinId: number
  replyCommentId: number | null
  currentUser: User | null
}

export default function PinComments({
  open,
  pinId,
  replyCommentId,
  currentUser,
}: PinCommentProps) {
  const [pinComments, setPinComments] = useState<PinComment[]>([])

  useMount(() => {
    selectPinCommentsByPinId(pinId).then((res) => {
      setPinComments(res.data)
    })
  })

  return (
    <Collapse in={open}>
      <Box>
        {/*input box*/}
        <PinCommentInput
          pinId={pinId}
          replyCommentId={replyCommentId}
          currentUser={currentUser}
        />
        {/*comment list*/}
        <CommentList
          pinId={pinId}
          pinComments={pinComments}
          currentUser={currentUser}
        />
      </Box>
    </Collapse>
  )
}
