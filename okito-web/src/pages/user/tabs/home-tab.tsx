import { Box } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useMount, useSort } from '../../../utils/hook'
import { useState } from 'react'
import { Activity } from '../../../types/activity'
import { selectActivitiesByUserId } from '../../../api/activity'
import { useAuth } from '../../../context/auth-context'

// TODO: don't have a good idea
export default function HomeTab() {
  const { id } = useParams()
  const { user } = useAuth()
  const currentUser = user
  const [activities, setActivities] = useState<Activity[]>([])

  useMount(() => {
    selectActivitiesByUserId(id as unknown as number).then((res) => {
      if (res.status === 20) {
        const data: Activity[] = useSort(res.data, 'execTime', 'desc')
        setActivities(data)
      }
    })
  })

  return <Box></Box>
}
