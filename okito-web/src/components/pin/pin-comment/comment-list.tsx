import React, { SyntheticEvent, useState } from 'react'
import { PinComment } from '../../../types/pin-comment'
import { User } from '../../../types/user'
import { useSort } from '../../../utils'
import { Box, Tab, Tabs, Typography } from '@mui/material'
import { tabProps } from '../../tab'
import { TabsProp } from '../../../types/tabs-prop'
import CommentCard from './comment-card'

const tabs: TabsProp[] = [
  { index: 0, label: '最热' },
  { index: 1, label: '最新' },
]

interface CommentListProps {
  pinId: number
  pinComments: PinComment[]
  currentUser: User | null
}

export default function CommentList({
  pinId,
  pinComments,
  currentUser,
}: CommentListProps) {
  const [value, setValue] = useState(0)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      pinComments = useSort(pinComments, 'likeNum', 'desc')
    } else if (newValue === 1) {
      pinComments = useSort(pinComments, 'uploadTime', 'desc')
    }
  }

  return (
    <Box>
      <Box sx={{ display: 'flex' }}>
        <Typography variant="h6" id="comment">
          {'评论'}
        </Typography>
        <Tabs value={value} onChange={handleChange} sx={{ marginLeft: 'auto' }}>
          {tabs.map(({ index, label }) => (
            <Tab key={index} label={label} {...tabProps(index)} />
          ))}
        </Tabs>
      </Box>
      {pinComments.map((comment) => (
        <CommentCard
          key={comment.id}
          pinId={pinId}
          comment={comment}
          currentUser={currentUser}
        />
      ))}
    </Box>
  )
}
