import React, { useState } from 'react'
import { Box, Collapse } from '@mui/material'
import { User } from '../../../types/user'
import InputBox from './input-box'
import CommentList from './comment-list'
import { PinComment } from '../../../types/pin-comment'
import { useMount, useSort } from '../../../utils/hook'
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
      const comments = res.data.filter(
        (comment: PinComment) => comment.parentId === null
      )
      setPinComments(useSort(comments, 'likeNum', 'desc'))
    })
  })

  return (
    <Collapse in={open}>
      <Box>
        {/*input box*/}
        <InputBox
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
