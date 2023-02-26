import { ReactNode, useState } from 'react'
import { Box, Paper } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useMount, useSort } from '../../../../utils'
import { Activity } from '../../../../types/activity'
import { selectActivitiesByUserId } from '../../../../api/activity'
import { selectPinById } from '../../../../api/pin'
import { selectUserById } from '../../../../api/user'
import { LikePinCard } from './like-pin-card'
import { LikePostCard } from './like-post-card'
import { selectPostById } from '../../../../api/post'
import { FollowUserCard } from './follow-user-card'
import { selectColumnById } from '../../../../api/column'
import { FollowColumnCard } from './follow-column-card'
import { selectCollectionById } from '../../../../api/collection'
import { FollowCollectionCard } from './follow-collection-card'
import { selectTagById } from '../../../../api/tag'
import { FollowTagCard } from './follow-tag-card'
import { PostCard } from '../../../../components/post/post-card'
import PinCard from '../../../../components/pin/pin-card'
import { User } from '../../../../types/user'

interface ActivityCard {
  id: number
  activity: Activity
  node: ReactNode
}

interface HomeTabProps {
  currentUser: User | null
}

export default function HomeTab({ currentUser }: HomeTabProps) {
  const { id } = useParams()
  const [activityCards, setActivityCards] = useState<ActivityCard[]>([])

  const handleActivityType = async (activity: Activity, user: User) => {
    let node: ReactNode = <Box></Box>
    const type = activity.actionType
    const subType = activity.actionSubType
    const targetId = activity.targetId
    if (type === 1) {
      // action: like
      if (subType === 1) {
        // like post
        const post = await selectPostById(targetId)
        if (post.status === 20) {
          node = (
            <Box sx={{ mt: 2 }}>
              <LikePostCard
                activity={activity}
                user={user}
                post={post.data}
                currentUser={currentUser}
              />
            </Box>
          )
        }
      } else if (subType === 2) {
        // like pin
        const pin = await selectPinById(targetId)
        if (pin.status === 20) {
          node = (
            <Box sx={{ mt: 2 }}>
              <LikePinCard
                activity={activity}
                user={user}
                pin={pin.data}
                currentUser={currentUser}
              />
            </Box>
          )
        }
      }
    } else if (type === 2) {
      // action: follow
      if (subType === 1) {
        // follow user
        const followUser = await selectUserById(targetId)
        if (followUser.status === 20) {
          node = (
            <Box sx={{ mt: 2 }}>
              <FollowUserCard
                activity={activity}
                user={user}
                followUser={followUser.data}
              />
            </Box>
          )
        }
      } else if (subType === 2) {
        // follow column
        const column = await selectColumnById(targetId)
        if (column.status === 20) {
          node = (
            <Box sx={{ mt: 2 }}>
              <FollowColumnCard
                activity={activity}
                user={user}
                column={column.data}
              />
            </Box>
          )
        }
      } else if (subType === 3) {
        // follow collection
        const collection = await selectCollectionById(targetId)
        if (collection.status === 20) {
          node = (
            <Box sx={{ mt: 2 }}>
              <FollowCollectionCard
                activity={activity}
                user={user}
                collection={collection.data}
              />
            </Box>
          )
        }
      } else if (subType === 4) {
        // follow tag
        const tag = await selectTagById(targetId)
        if (tag.status === 20) {
          node = (
            <Box sx={{ mt: 2 }}>
              <FollowTagCard activity={activity} user={user} tag={tag.data} />
            </Box>
          )
        }
      }
    } else if (type === 3) {
      // action: upload
      if (subType === 1) {
        // upload post
        const post = await selectPostById(targetId)
        if (post.status === 20) {
          node = <PostCard post={post.data} currentUser={currentUser} />
        }
      } else if (subType === 2) {
        // upload pin
        const pin = await selectPinById(targetId)
        if (pin.status === 20) {
          node = (
            <Paper sx={{ mt: 2 }}>
              <PinCard pin={pin.data} currentUser={currentUser} />
            </Paper>
          )
        }
      }
    }
    return node
  }

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
          const node = await handleActivityType(activity, user)
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
