import React, { SyntheticEvent, useState } from 'react'
import { Link } from 'react-router-dom'
import { Box, Tab, Tabs } from '@mui/material'
import { useMount } from '../../utils/hook'

const tabs = [
  { index: 0, label: '首页', path: '/' },
  { index: 1, label: '想法', path: '/pin' },
]

export default function Nav() {
  const [value, setValue] = useState<number>(0)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
  }

  useMount(() => {
    const path = window.location.pathname
    console.log(path)
    if (path === '/') {
      setValue(0)
    } else if (path === '/pin') {
      setValue(1)
    } else {
      // TODO: if not in toolbar tabs
      setValue(2)
    }
  })

  return (
    <Box>
      <Tabs value={value} onChange={handleChange}>
        {tabs.map(({ index, label, path }) => (
          <Tab
            key={index}
            label={label}
            tabIndex={index}
            component={Link}
            to={`${path}`}
            sx={{ p: 0, minWidth: '70px' }}
          />
        ))}
      </Tabs>
    </Box>
  )
}
