import React from 'react'
import { Link, To } from 'react-router-dom'
import { Box, Tab, Tabs } from '@mui/material'

interface TabProps {
  label: React.ReactNode
  key: string
  to: To
}

export const Nav = () => {
  const [value, setValue] = React.useState(0)
  const handleChange = (event: React.SyntheticEvent, newValue: number) => {
    setValue(newValue)
  }

  const tabs: TabProps[] = [
    {
      label: 'Home',
      key: 'Home',
      to: '/',
    },
    {
      label: 'Post',
      key: 'Post',
      to: '/post',
    },
    {
      label: 'Pin',
      key: 'Pin',
      to: '/pin',
    },
  ]

  return (
    <Box>
      <Tabs value={value} onChange={handleChange}>
        {tabs.map((tab) => (
          <Tab {...tab} component={Link} />
        ))}
      </Tabs>
    </Box>
  )
}
