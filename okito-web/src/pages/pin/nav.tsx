import React, { ReactElement, ReactNode, SyntheticEvent } from 'react'
import { Box, Paper, Tab, Tabs } from '@mui/material'
import { Link } from 'react-router-dom'
import AccessTimeOutlinedIcon from '@mui/icons-material/AccessTimeOutlined'
import LocalFireDepartmentOutlinedIcon from '@mui/icons-material/LocalFireDepartmentOutlined'

interface PinTabProps {
  tabIndex: number
  label: ReactNode
  icon: string | ReactElement | undefined
  iconPosition: 'top' | 'bottom' | 'end' | 'start' | undefined
  to: string
}

const pinTabs: PinTabProps[] = [
  {
    tabIndex: 0,
    label: '最新',
    icon: <AccessTimeOutlinedIcon />,
    iconPosition: 'start',
    to: '/pin?sort=new',
  },
  {
    tabIndex: 1,
    label: '热门',
    icon: <LocalFireDepartmentOutlinedIcon />,
    iconPosition: 'start',
    to: '/pin?sort=hot',
  },
]

interface NavProps {
  value: number
  handleChange: (event: SyntheticEvent, newValue: number) => void
}

export default function Nav({ value, handleChange }: NavProps) {
  return (
    <Paper>
      <Box>
        <Tabs
          value={value}
          onChange={handleChange}
          orientation="vertical"
          sx={{ marginLeft: 'auto', textAlign: 'left' }}
        >
          {pinTabs.map(({ tabIndex, label, icon, iconPosition, to }) => (
            <Tab
              key={tabIndex}
              tabIndex={tabIndex}
              label={label}
              icon={icon}
              iconPosition={iconPosition}
              component={Link}
              to={to}
              sx={{ minHeight: '54px', justifyContent: 'start' }}
            />
          ))}
        </Tabs>
      </Box>
    </Paper>
  )
}
