import React from 'react'
import { Box, Paper, Tab, Tabs } from '@mui/material'
import { EntityList } from './entity-list'
import { TabPanel, tabProps } from '../../../components/tab'

export const Main = () => {
  const [value, setValue] = React.useState(0)
  const handleChange = (event: React.SyntheticEvent, newValue: number) => {
    setValue(newValue)
  }

  return (
    <Paper>
      <Box
        sx={{
          width: '100%',
          borderColor: (theme) =>
            theme.palette.mode === 'light'
              ? 'rgba(231, 235, 240)'
              : 'rgba(194, 224, 255, 0.08)',
          borderStyle: 'solid',
          borderRadius: '5px',
          borderWidth: '1px 1px thin',
          margin: 'auto',
        }}
      >
        <Box sx={{ borderBottom: 1, borderColor: 'divider' }}>
          <Tabs
            value={value}
            onChange={handleChange}
            aria-label="basic tabs example"
          >
            <Tab label="推荐" {...tabProps(0)} />
            <Tab label="关注" {...tabProps(1)} />
            <Tab label="热门" {...tabProps(2)} />
          </Tabs>
        </Box>
        <TabPanel value={value} index={0}>
          <EntityList />
        </TabPanel>
        <TabPanel value={value} index={1}>
          Item Two
        </TabPanel>
        <TabPanel value={value} index={2}>
          Item Three
        </TabPanel>
      </Box>
    </Paper>
  )
}
