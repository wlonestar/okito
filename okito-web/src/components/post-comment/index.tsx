import React, { SyntheticEvent, useState } from 'react'
import { Box, Tab, Tabs, Typography } from '@mui/material'
import { TabPanel, tabProps } from '../tab'
import { ReplyBox } from './reply'
import { PostComment } from '../../types/post-comment'
import { CommentList } from './list'
import { User } from '../../types/user'
import { TabsProp } from '../../types/tabs-prop'

const tabs: TabsProp[] = [
  {
    index: 0,
    label: '最热',
  },
  {
    index: 1,
    label: '最新',
  },
]

export interface PostCommentListProps {
  postComments: PostComment[]
  currentUser: User | null
}

export const PostCommentBox = ({
  postComments,
  currentUser,
}: PostCommentListProps) => {
  const [value, setValue] = useState(0)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      postComments.sort((a, b) => (a.likeNum < b.likeNum ? 1 : 0))
    } else if (newValue === 1) {
      postComments.sort((a, b) => (a.uploadTime < b.uploadTime ? 1 : 0))
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
      <ReplyBox currentUser={currentUser} />
      {tabs.map(({ index }) => (
        <TabPanel key={index} value={value} index={index}>
          <CommentList postComments={postComments} currentUser={currentUser} />
        </TabPanel>
      ))}
    </Box>
  )
}
