import React, { ReactElement, ReactNode, SyntheticEvent } from 'react'
import { Box, Paper, Tab, Tabs } from '@mui/material'
import { Link } from 'react-router-dom'
import AccessTimeOutlinedIcon from '@mui/icons-material/AccessTimeOutlined'
import LocalFireDepartmentOutlinedIcon from '@mui/icons-material/LocalFireDepartmentOutlined'
import StickyNote2OutlinedIcon from '@mui/icons-material/StickyNote2Outlined'
import { User } from '../../types/user'

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
    to: '/pin/',
  },
  {
    tabIndex: 1,
    label: '热门',
    icon: <LocalFireDepartmentOutlinedIcon />,
    iconPosition: 'start',
    to: '/pin/hot',
  },
]

interface NavProps {
  value: number
  handleChange: (event: SyntheticEvent, newValue: number) => void
  currentUser: User | null
}

export default function Nav({ value, handleChange, currentUser }: NavProps) {
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
          {currentUser !== null ? (
            <Tab
              key={2}
              tabIndex={2}
              label={'关注'}
              icon={<StickyNote2OutlinedIcon />}
              iconPosition={'start'}
              component={Link}
              to={'/pin/follow'}
              sx={{ minHeight: '54px', justifyContent: 'start' }}
            />
          ) : (
            ''
          )}
        </Tabs>
      </Box>
    </Paper>
  )
}
