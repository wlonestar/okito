import { Box, Divider, Paper, Tab, Tabs } from '@mui/material'
import { Link, useParams } from 'react-router-dom'
import { SyntheticEvent, useState } from 'react'
import { useMount } from '../../../utils'
import { TabPanel } from '../../../components/tab'
import { Column } from '../../../types/column'
import { selectColumnsByFollowerId } from '../../../api/column'
import ColumnList from '../../../components/column/column-list'
import { User } from '../../../types/user'
import {
  selectUserFollowerByUserId,
  selectUserFollowingByUserId,
} from '../../../api/user'
import UserTitle from '../../../components/user/user-title'
import { Tag } from '../../../types/tag'
import { selectTagsByFollowerId } from '../../../api/tag'
import TagTitle from '../../../components/tag/tag-title'

interface FollowsTabProps {
  currentUser: User | null
}

export default function FollowsTab({ currentUser }: FollowsTabProps) {
  const { id } = useParams()
  const [homepage, setHomepage] = useState<boolean>(false)
  const [value, setValue] = useState<number>(0)
  const [followingUsers, setFollowingUsers] = useState<User[]>([])
  const [followerUsers, setFollowerUsers] = useState<User[]>([])
  const [followedColumns, setFollowedColumns] = useState<Column[]>([])
  const [followedTags, setFollowedTags] = useState<Tag[]>([])

  const tabs = [
    { index: 0, label: '关注的用户', path: `/user/${id}/follows?q=following` },
    { index: 1, label: '关注者', path: `/user/${id}/follows?q=followers` },
    {
      index: 2,
      label: '关注的专栏',
      path: `/user/${id}/follows?q=followed_columns`,
    },
    {
      index: 3,
      label: '关注的标签',
      path: `/user/${id}/follows?q=followed_tags`,
    },
  ]

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
  }

  useMount(async () => {
    const tab = window.location.href.split('=').pop()
    if (tab === 'followers') {
      setValue(1)
    } else if (tab === 'followed_columns') {
      setValue(2)
    } else if (tab === 'followed_tags') {
      setValue(3)
    }

    const userId = id as unknown as number
    if (currentUser !== null && currentUser.id === userId) {
      setHomepage(true)
    }
    const following = await selectUserFollowingByUserId(userId)
    if (following.status === 20) {
      setFollowingUsers(following.data)
    }
    const follower = await selectUserFollowerByUserId(userId)
    if (follower.status === 20) {
      setFollowerUsers(follower.data)
    }
    const columns = await selectColumnsByFollowerId(userId)
    if (columns.status === 20) {
      setFollowedColumns(columns.data)
    }
    const tags = await selectTagsByFollowerId(userId)
    if (tags.status === 20) {
      setFollowedTags(tags.data)
    }
  })

  return (
    <Paper>
      <Box sx={{ display: 'flex' }}>
        <Tabs value={value} onChange={handleChange} sx={{ marginLeft: 'auto' }}>
          {tabs.map(({ index, label, path }) => (
            <Tab
              key={index}
              label={label}
              tabIndex={index}
              component={Link}
              to={path}
            />
          ))}
        </Tabs>
      </Box>
      <Divider />
      <Paper>
        <TabPanel index={0} value={value}>
          {followingUsers.map((user) => (
            <UserTitle key={user.id} user={user} currentUser={currentUser} />
          ))}
        </TabPanel>
        <TabPanel index={1} value={value}>
          {followerUsers.map((user) => (
            <UserTitle key={user.id} user={user} currentUser={currentUser} />
          ))}
        </TabPanel>
        <TabPanel index={2} value={value}>
          <ColumnList
            columns={followedColumns}
            homepage={homepage}
            currentUser={currentUser}
          />
        </TabPanel>
        <TabPanel index={3} value={value}>
          {followedTags.map((tag) => (
            <TagTitle key={tag.id} tag={tag} currentUser={currentUser} />
          ))}
        </TabPanel>
      </Paper>
    </Paper>
  )
}
