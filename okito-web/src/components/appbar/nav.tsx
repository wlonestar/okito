import React, { SyntheticEvent, useState } from 'react'
import { Link } from 'react-router-dom'
import { Box, Tab, Tabs } from '@mui/material'
import { useMount } from '../../utils'

const tabs = [
  { index: 0, label: '', path: '' },
  { index: 1, label: '首页', path: '/' },
  { index: 2, label: '想法', path: '/pin' },
]

export default function Nav() {
  const [value, setValue] = useState<number>(0)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
  }

  useMount(() => {
    const path = window.location.pathname
    if (path === '/') {
      setValue(1)
    } else if (path === '/pin') {
      setValue(2)
    } else {
      setValue(0)
    }
  })

  return (
    <Box>
      <Tabs value={value} onChange={handleChange}>
        {tabs.map(({ index, label, path }) =>
          index === 0 ? (
            <Tab
              hidden
              key={index}
              label={label}
              tabIndex={index}
              component={Link}
              to={`${path}`}
              sx={{ p: 0, minWidth: '0px' }}
            />
          ) : (
            <Tab
              key={index}
              label={label}
              tabIndex={index}
              component={Link}
              to={`${path}`}
              sx={{ p: 0, minWidth: '70px' }}
            />
          )
        )}
      </Tabs>
    </Box>
  )
}
