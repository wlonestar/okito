import { Box, Grid, Paper, Tab, Tabs } from '@mui/material'
import Main from './main'
import Side from './side'
import React, { SyntheticEvent, useState } from 'react'
import { Pin } from '../../types/pin'
import { useMount, useSort } from '../../utils/hook'
import { selectAllPins } from '../../api/pin'
import { User } from '../../types/user'
import { selectPostsByAuthorId } from '../../api/post'
import { Link } from 'react-router-dom'

interface PinPageProps {
  currentUser: User | null
}

export default function PinPage({ currentUser }: PinPageProps) {
  const [pins, setPins] = useState<Pin[]>([])
  const [value, setValue] = useState(0)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      const data = useSort(pins, 'createTime', 'desc')
      setPins(data)
    } else if (newValue === 1) {
      const data = useSort(pins, 'viewNum', 'desc')
      setPins(data)
    }
  }

  useMount(() => {
    console.log('pin page', currentUser)
    selectAllPins().then((res) => {
      setPins(res.data)
    })
  })

  return (
    <Grid container spacing={3} sx={{ margin: '0 auto' }}>
      <Grid item xs={12} md={2}>
        {/*<Nav />*/}
        <Paper>
          <Box>
            <Tabs
              value={value}
              onChange={handleChange}
              sx={{ marginLeft: 'auto' }}
            >
              <Tab
                label={'最新'}
                tabIndex={0}
                component={Link}
                to={`/pin?sort=new`}
              />{' '}
              <Tab
                label={'热门'}
                tabIndex={1}
                component={Link}
                to={`/pin?sort=hot`}
              />
            </Tabs>
          </Box>
        </Paper>
      </Grid>
      <Grid item xs={12} md={7}>
        <Main pins={pins} currentUser={currentUser} />
      </Grid>
      <Grid item xs={12} md={3}>
        <Side />
      </Grid>
    </Grid>
  )
}
