import React, { ReactNode } from 'react'
import { Box } from '@mui/material'

interface TabPanelProps {
  children?: ReactNode
  index: number
  value: number
}

export function TabPanel(props: TabPanelProps) {
  const { children, value, index, ...other } = props

  return (
    <div
      role="tab-panel"
      hidden={value !== index}
      id={`simple-tab-panel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
      style={{
        padding: 0,
      }}
    >
      {value === index && <Box>{children}</Box>}
    </div>
  )
}

export function tabProps(index: number) {
  return {
    id: `simple-tab-${index}`,
    'aria-controls': `simple-tab-panel-${index}`,
  }
}
