import React from 'react'
import { Link, To } from 'react-router-dom'
import { Box, Tab, Tabs } from '@mui/material'

interface TabProps {
  label: React.ReactNode
  key: string
  to: To
}

const tabs: TabProps[] = [
  {
    label: '首页',
    key: 'Home',
    to: '/',
  },
  // {
  //   label: 'Post',
  //   key: 'Post',
  //   to: '/post',
  // },
  {
    label: '想法',
    key: 'Pin',
    to: '/pin',
  },
]

export default function Nav() {
  const [value, setValue] = React.useState(0)
  const handleChange = (event: React.SyntheticEvent, newValue: number) => {
    setValue(newValue)
  }

  return (
    <Box>
      <Tabs value={value} onChange={handleChange}>
        {tabs.map((tab) => (
          <Tab {...tab} component={Link} sx={{ p: 0, minWidth: '70px' }} />
        ))}
      </Tabs>
    </Box>
  )
}
