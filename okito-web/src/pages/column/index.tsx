import { useParams } from 'react-router-dom'
import { useMount, useSort } from '../../utils/hook'
import React, { SyntheticEvent, useState } from 'react'
import { Column, columnDefault } from '../../types/column'
import {
  countFollowByColumnId,
  countPostsByColumnId,
  selectColumnById,
} from '../../api/column'
import { User, userDefault } from '../../types/user'
import ColumnTitle from '../../components/column/column-title'
import { selectUserById } from '../../api/user'
import { Box, Tab, Tabs } from '@mui/material'
import { Post } from '../../types/post'
import { selectPostsByColumnId } from '../../api/post'
import { TabPanel, tabProps } from '../../components/tab'
import { PostCard } from '../../components/post-list/post-card'
import { TabsProp } from '../../types/tabs-prop'

const tabs: TabsProp[] = [
  { index: 0, label: '默认' },
  { index: 1, label: '最新发布' },
  { index: 2, label: '最早发布' },
]

interface ColumnPageProps {
  currentUser: User | null
}

export default function ColumnPage({ currentUser }: ColumnPageProps) {
  const { id } = useParams()
  const [column, setColumn] = useState<Column>(columnDefault)
  const [postsNum, setPostsNum] = useState<number>(0)
  const [followNum, setFollowNum] = useState<number>(0)
  const [author, setAuthor] = useState<User>(userDefault)
  const [homepage, setHomepage] = useState<boolean>(false)
  const [posts, setPosts] = useState<Post[]>([])
  const [value, setValue] = useState(0)

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
    if (newValue === 0) {
      const data = useSort(posts, 'createTime', 'desc')
      setPosts(data)
    } else if (newValue === 1) {
      const data = useSort(posts, 'createTime', 'desc')
      setPosts(data)
    } else if (newValue === 2) {
      const data = useSort(posts, 'createTime', 'asc')
      setPosts(data)
    }
  }
  const useColumn = (id: number) => {
    return selectColumnById(id)
  }

  useMount(async () => {
    console.log(id)
    const columnId = id as unknown as number
    console.log(columnId)
    const column = await useColumn(columnId)
    setColumn(column.data)
    const postsNum = await countPostsByColumnId(columnId)
    setPostsNum(postsNum.data)
    const followNum = await countFollowByColumnId(columnId)
    setFollowNum(followNum.data)
    const author = await selectUserById(column.data.authorId)
    setAuthor(author.data)
    if (currentUser !== null) {
      if (currentUser.id === column.data.authorId) {
        // console.log('is homepage')
        setHomepage(true)
      }
    } else {
      // console.log('not login')
    }
    const posts = await selectPostsByColumnId(columnId)
    const data: Post[] = useSort(posts.data, 'createTime', 'desc')
    setPosts(data)
  })

  return (
    <Box>
      <ColumnTitle
        column={column}
        postsNum={postsNum}
        followNum={followNum}
        author={author}
        homepage={homepage}
        currentUser={currentUser}
      />
      <Box
        sx={{ borderBottom: 1, borderColor: 'divider', right: '10px', pt: 2 }}
      >
        <Tabs
          value={value}
          onChange={handleChange}
          aria-label="basic tabs example"
        >
          {tabs.map(({ index, label }) => (
            <Tab key={index} label={label} {...tabProps(index)} />
          ))}
        </Tabs>
      </Box>
      {tabs.map(({ index }) => (
        <TabPanel key={index} value={value} index={index}>
          <Box>
            {posts.map((post) => (
              <PostCard key={post.id} post={post} currentUser={currentUser} />
            ))}
          </Box>
        </TabPanel>
      ))}
    </Box>
  )
}