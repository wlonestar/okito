import {
  Box,
  Button,
  CardContent,
  CardMedia,
  Divider,
  Grid,
  IconButton,
  Link,
  Typography,
} from '@mui/material'
import { Column } from '../../../types/column'
import { User } from '../../../types/user'
import MetaData from './meta-data'
import React, { useState } from 'react'
import { useMount } from '../../../utils'
import {
  countFollowByColumnId,
  countPostsByColumnId,
} from '../../../api/column'
import {
  selectUserColumnFollowByUserIdAndColumnId,
  updateFollowColumn,
} from '../../../api/user'
import MoreHorizOutlinedIcon from '@mui/icons-material/MoreHorizOutlined'
import AddOutlinedIcon from '@mui/icons-material/AddOutlined'
import CheckOutlinedIcon from '@mui/icons-material/CheckOutlined'
import ActionList from './action-list'

interface ColumnCardProps {
  column: Column
  homepage: boolean
  currentUser: User | null
}

export default function ColumnCard({
  column,
  homepage,
  currentUser,
}: ColumnCardProps) {
  const [postsNum, setPostsNum] = useState<number>(0)
  const [followNum, setFollowNum] = useState<number>(0)
  const [followed, setFollowed] = useState<boolean>(false)
  const [anchorElColumn, setAnchorElColumn] = useState<null | HTMLElement>(null)

  const handleClick = () => {
    const param = {
      userId: currentUser?.id,
      columnId: column.id,
      follow: !followed,
    }
    updateFollowColumn(param).then((res) => {
      if (res.status === 20) {
        setFollowed(!followed)
      }
    })
  }

  const handleOpenUserMenu = (event: React.MouseEvent<HTMLElement>) => {
    setAnchorElColumn(event.currentTarget)
  }

  const handleCloseActionMenu = () => {
    setAnchorElColumn(null)
  }

  useMount(async () => {
    const postsNum = await countPostsByColumnId(column.id)
    if (postsNum.status === 20) {
      setPostsNum(postsNum.data)
    }
    if (currentUser !== null) {
      const followNum = await countFollowByColumnId(column.id)
      if (followNum.status === 20) {
        setFollowNum(followNum.data)
      }
      const param = { userId: currentUser?.id, columnId: column.id }
      const followData = await selectUserColumnFollowByUserIdAndColumnId(param)
      if (followData.status === 20) {
        if (followData.data.follow) {
          setFollowed(true)
        }
      }
    }
  })

  return (
    <Box>
      <Box sx={{ height: '160px' }}>
        <CardContent>
          <Grid container spacing={2}>
            {/*cover*/}
            <Grid item xs={12} md={3} lg={3}>
              <CardMedia
                component="img"
                height="120"
                image={column.cover}
                alt={column.cover}
                loading="lazy"
              />
            </Grid>
            {/*title, summary and actions*/}
            <Grid item xs={12} md={9} lg={9}>
              <Box
                sx={{
                  width: '100%',
                  display: 'flex',
                  alignItems: 'center',
                  flexWrap: 'wrap',
                }}
              >
                <Link
                  href={`/column/${column.id}`}
                  target="_blank"
                  underline="none"
                >
                  <Typography
                    variant="h6"
                    component="div"
                    fontWeight="500"
                    color="text.primary"
                  >
                    {column.name}
                  </Typography>
                </Link>
                {homepage ? (
                  <IconButton
                    sx={{ size: 'small', marginLeft: 'auto' }}
                    onClick={handleOpenUserMenu}
                  >
                    <MoreHorizOutlinedIcon />
                  </IconButton>
                ) : followed ? (
                  <Button
                    variant="contained"
                    size="small"
                    onClick={handleClick}
                    sx={{ marginLeft: 'auto' }}
                    color="inherit"
                  >
                    <CheckOutlinedIcon />
                    {'已关注'}
                  </Button>
                ) : (
                  <Button
                    variant="contained"
                    size="small"
                    onClick={handleClick}
                    sx={{ marginLeft: 'auto' }}
                  >
                    <AddOutlinedIcon />
                    {'关注'}
                  </Button>
                )}
                <ActionList
                  column={column}
                  anchorElColumn={anchorElColumn}
                  handleCloseActionMenu={handleCloseActionMenu}
                />
              </Box>
              <Typography
                sx={{
                  mb: 1.5,
                  overflow: 'hidden',
                  textOverflow: 'ellipsis',
                  display: '-webkit-box',
                  lineHeight: '24px',
                  maxHeight: '48px',
                }}
                color="text.secondary"
              >
                {column.description}
              </Typography>
              <MetaData
                column={column}
                postsNum={postsNum}
                followNum={followNum}
              />
            </Grid>
          </Grid>
        </CardContent>
      </Box>
      <Divider sx={{ ml: 2, mr: 2 }} />
    </Box>
  )
}
