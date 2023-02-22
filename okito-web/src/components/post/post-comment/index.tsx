import React, { SyntheticEvent, useState } from 'react'
import { Box, Tab, Tabs, Typography } from '@mui/material'
import { tabProps } from '../../tab'
import InputBox from './input-box'
import { PostComment } from '../../../types/post-comment'
import CommentList from './comment-list'
import { User } from '../../../types/user'
import { TabsProp } from '../../../types/tabs-prop'
import { useSort } from '../../../utils/hook'

const tabs: TabsProp[] = [
  { index: 0, label: '最热' },
  { index: 1, label: '最新' },
]

export interface PostCommentListProps {
  postId: number
  postComments: PostComment[]
  currentUser: User | null
}

export default function PostComments({
  postId,
  postComments,
  currentUser,
}: PostCommentListProps) {
  const [value, setValue] = useState(0)
  const replyCommentId = null

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      postComments = useSort(postComments, 'likeNum', 'desc')
    } else if (newValue === 1) {
      postComments = useSort(postComments, 'uploadTime', 'desc')
    }
  }

  return (
    <Box>
      <Typography variant="h5" id="comment">
        {'评论'}
      </Typography>
      <Box sx={{ right: '10px' }}>
        <Tabs value={value} onChange={handleChange}>
          {tabs.map(({ index, label }) => (
            <Tab key={index} label={label} {...tabProps(index)} />
          ))}
        </Tabs>
      </Box>
      <InputBox
        currentUser={currentUser}
        postId={postId}
        replyCommentId={replyCommentId}
      />
      <CommentList
        postId={postId}
        postComments={postComments}
        currentUser={currentUser}
      />
    </Box>
  )
}
