import { useParams } from 'react-router-dom'
import { useMount, useSort } from '../../utils'
import React, { SyntheticEvent, useState } from 'react'
import { Column, defaultColumn } from '../../types/column'
import {
  countFollowByColumnId,
  countPostsByColumnId,
  selectColumnById,
} from '../../api/column'
import { User, defaultUser } from '../../types/user'
import ColumnTitle from '../../components/column/column-title'
import { selectUserById } from '../../api/user'
import { Box, Paper, Tab, Tabs } from '@mui/material'
import { Post } from '../../types/post'
import { selectPostsByColumnId } from '../../api/post'
import { tabProps } from '../../components/tab'
import { PostCard } from '../../components/post/post-card'

const tabs = [
  { index: 0, label: '默认' },
  { index: 1, label: '最新发布' },
  { index: 2, label: '最早发布' },
]

interface ColumnPageProps {
  currentUser: User | null
}

export default function ColumnPage({ currentUser }: ColumnPageProps) {
  const { id } = useParams()
  const [column, setColumn] = useState<Column>(defaultColumn)
  const [postsNum, setPostsNum] = useState<number>(0)
  const [followNum, setFollowNum] = useState<number>(0)
  const [author, setAuthor] = useState<User>(defaultUser)
  const [homepage, setHomepage] = useState<boolean>(false)
  const [posts, setPosts] = useState<Post[]>([])
  const [value, setValue] = useState<number>(0)

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

  useMount(async () => {
    const columnId = Number(id)
    const column = await selectColumnById(columnId)
    setColumn(column.data)
    const postsNum = await countPostsByColumnId(columnId)
    setPostsNum(postsNum.data)
    const followNum = await countFollowByColumnId(columnId)
    setFollowNum(followNum.data)
    const author = await selectUserById(column.data.authorId)
    setAuthor(author.data)
    if (currentUser !== null) {
      if (currentUser.id === column.data.authorId) {
        setHomepage(true)
      }
    }
    const posts = await selectPostsByColumnId(columnId)
    const data: Post[] = useSort(posts.data, 'createTime', 'desc')
    setPosts(data)
  })

  return (
    <Box sx={{ maxWidth: '1080px', mt: 3, mb: 3, ml: 'auto', mr: 'auto' }}>
      <Paper>
        <ColumnTitle
          column={column}
          postsNum={postsNum}
          followNum={followNum}
          author={author}
          homepage={homepage}
          currentUser={currentUser}
        />
      </Paper>
      <Paper sx={{ mt: 3 }}>
        <Box sx={{ borderBottom: 1, borderColor: 'divider', right: '10px' }}>
          <Tabs value={value} onChange={handleChange}>
            {tabs.map(({ index, label }) => (
              <Tab key={index} label={label} {...tabProps(index)} />
            ))}
          </Tabs>
        </Box>
        {posts.map((post) => (
          <PostCard key={post.id} post={post} currentUser={currentUser} />
        ))}
      </Paper>
    </Box>
  )
}
