import { Box, Tab, Tabs, Typography } from '@mui/material'
import React from 'react'
import { TabPanel, tabProps } from '../tab'
import { ReplyBox } from './reply'
import { PostComment } from '../../types/post-comment'
import { CommentList } from './list'

export interface CommentListProps {
  comments: PostComment[]
}

export const CommentBox = ({ comments }: CommentListProps) => {
  const [value, setValue] = React.useState(0)
  const handleChange = (event: React.SyntheticEvent, newValue: number) => {
    setValue(newValue)
  }

  return (
    <Box>
      <Typography variant="h5" id="comment">
        {'评论'}
      </Typography>
      <Box sx={{ right: '10px' }}>
        <Tabs
          value={value}
          onChange={handleChange}
          aria-label="basic tabs example"
        >
          <Tab label="最热" {...tabProps(0)} />
          <Tab label="最新" {...tabProps(1)} />
        </Tabs>
      </Box>
      <ReplyBox />
      <TabPanel value={value} index={0}>
        <CommentList comments={comments} />
      </TabPanel>
      <TabPanel value={value} index={1}>
        Item Two
      </TabPanel>
    </Box>
  )
}
