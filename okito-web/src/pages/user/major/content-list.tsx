import React, { SyntheticEvent, useState } from 'react'
import { Box, Divider, Paper, Tab, Tabs } from '@mui/material'
import { User } from '../../../types/user'
import { Link, Outlet, useParams } from 'react-router-dom'

const tabs = [
  { index: 0, label: '动态', path: '' },
  { index: 1, label: '文章', path: '/posts' },
  { index: 2, label: '专栏', path: '/columns' },
  { index: 3, label: '想法', path: '/pins' },
  { index: 4, label: '收藏', path: '/collections' },
  { index: 5, label: '关注', path: '/follows' },
]

interface ContentListProps {
  user: User
  currentUser: User | null
}

export default function ContentList({ user, currentUser }: ContentListProps) {
  const { id } = useParams()
  const [value, setValue] = useState(0)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    // TODO
  }

  return (
    <Box>
      <Paper sx={{ mt: 2, mb: 2 }}>
        <Box sx={{ width: '100%', margin: 'auto' }}>
          <Box
            sx={{
              width: '100%',
              borderRadius: '5px',
              borderWidth: '1px 1px thin',
            }}
          >
            <Tabs value={value} onChange={handleChange}>
              {tabs.map(({ index, label, path }) => (
                <Tab
                  key={index}
                  label={label}
                  tabIndex={index}
                  component={Link}
                  to={`/user/${id}${path}`}
                  sx={{
                    borderRadius: '5px',
                    borderWidth: '1px 1px thin',
                  }}
                />
              ))}
            </Tabs>
          </Box>
          <Divider />
        </Box>
      </Paper>
      <Outlet />
    </Box>
  )
}
