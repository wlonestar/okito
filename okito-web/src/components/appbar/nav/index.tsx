import React from 'react'
import { Link, matchPath, To, useLocation } from 'react-router-dom'
import { Box, Tab, Tabs } from '@mui/material'

function useRouteMatch(patterns: readonly string[]) {
  const { pathname } = useLocation()

  for (let i = 0; i < patterns.length; i += 1) {
    const pattern = patterns[i]
    const possibleMatch = matchPath(pattern, pathname)
    if (possibleMatch !== null) {
      return possibleMatch
    }
  }

  return null
}

interface TabProps {
  label: React.ReactNode
  key: string
  value: any
  to: To
}

export const CustomNav = () => {
  const routeMatch = useRouteMatch(['/', '/post', '/pin'])
  const currentTab = routeMatch?.pattern?.path

  const tabs: TabProps[] = [
    {
      label: 'Home',
      key: 'Home',
      value: '/',
      to: '/',
    },
    {
      label: 'Post',
      key: 'Post',
      value: '/post',
      to: '/post',
    },
    {
      label: 'Pin',
      key: 'Pin',
      value: '/pin',
      to: '/pin',
    },
  ]

  return (
    <Box>
      <Tabs value={currentTab}>
        {tabs.map((tab) => (
          <Tab {...tab} component={Link} />
        ))}
      </Tabs>
    </Box>
  )
}
