import { Box } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useMount, useSort } from '../../../../utils/hook'
import { ReactNode, useState } from 'react'
import { Activity } from '../../../../types/activity'
import { selectActivitiesByUserId } from '../../../../api/activity'
import { useAuth } from '../../../../context/auth-context'
import { selectPinById } from '../../../../api/pin'
import { selectUserById } from '../../../../api/user'
import { LikePinCard } from './like-pin-card'
import { LikePostCard } from './like-post-card'
import { selectPostById } from '../../../../api/post'

interface ActivityCard {
  id: number
  activity: Activity
  node: ReactNode
}

// TODO: have a idea
export default function HomeTab() {
  const { id } = useParams()
  const { user } = useAuth()
  const currentUser = user
  const [activityCards, setActivityCards] = useState<ActivityCard[]>([])

  useMount(async () => {
    const userId = id as unknown as number
    const res = await selectActivitiesByUserId(userId)
    if (res.status === 20) {
      const userData = await selectUserById(userId)
      let user = null
      if (userData.status === 20) {
        user = userData.data
        const data: Activity[] = useSort(res.data, 'execTime', 'desc')
        const activityCards: ActivityCard[] = []

        for (const activity of data) {
          // TODO
          let node: ReactNode = <Box></Box>
          const type = activity.actionType
          const subType = activity.actionSubType
          const targetId = activity.targetId
          if (type === 1) {
            if (subType === 1) {
              const post = await selectPostById(targetId)
              if (post.status === 20) {
                node = (
                  <LikePostCard
                    activity={activity}
                    user={user}
                    post={post.data}
                    currentUser={currentUser}
                  />
                )
              }
            } else if (subType === 2) {
              const pin = await selectPinById(targetId)
              if (pin.status === 20) {
                node = (
                  <LikePinCard
                    activity={activity}
                    user={user}
                    pin={pin.data}
                    currentUser={currentUser}
                  />
                )
              }
            }
          }

          const card: ActivityCard = {
            id: activity.id,
            activity: activity,
            node: node,
          }
          // after fetching data
          activityCards.push(card)
        }
        setActivityCards(activityCards)
      }
    }
  })

  return (
    <Box>
      {activityCards.map(({ id, node }) => (
        <Box key={id}>{node}</Box>
      ))}
    </Box>
  )
}
