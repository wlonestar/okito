import React, { useState } from 'react'
import {
  Box,
  Button,
  Card,
  CardContent,
  CardMedia,
  Grid,
  IconButton,
  Link,
  Typography,
} from '@mui/material'
import MoreHorizOutlinedIcon from '@mui/icons-material/MoreHorizOutlined'
import CheckOutlinedIcon from '@mui/icons-material/CheckOutlined'
import AddOutlinedIcon from '@mui/icons-material/AddOutlined'
import MetaData from '../column-list/column-card/meta-data'
import { Column } from '../../../types/column'
import {
  selectUserColumnFollowByUserIdAndColumnId,
  updateFollowColumn,
} from '../../../api/user'
import { useMount } from '../../../utils/hook'
import { User } from '../../../types/user'
import AuthorTitle from '../../author-title'
import ActionList from '../column-list/column-card/action-list'

interface ColumnTitleProps {
  column: Column
  postsNum: number
  followNum: number
  author: User
  homepage: boolean
  currentUser: User | null
}

export default function ColumnTitle({
  column,
  postsNum,
  followNum,
  author,
  homepage,
  currentUser,
}: ColumnTitleProps) {
  const [followed, setFollowed] = useState<boolean>(false)
  const [anchorElColumn, setAnchorElColumn] = useState<null | HTMLElement>(null)

  const handleClick = () => {
    const param = {
      columnId: column.id,
      userId: currentUser?.id,
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
    const param = {
      userId: currentUser?.id,
      columnId: column.id,
    }
    const res = await selectUserColumnFollowByUserIdAndColumnId(param)
    if (res.status === 20) {
      const data = res.data
      if (data.follow) {
        setFollowed(true)
      }
    }
  })

  return (
    <Card
      variant="outlined"
      sx={{ borderWidth: '0px 0px thin', borderRadius: '5px', height: '200px' }}
    >
      <CardContent>
        <Link underline="none" href={`/column/${column.id}`} target="_blank">
          <Typography
            variant="h6"
            component="div"
            fontWeight="500"
            color="text.primary"
          >
            {column.name}
          </Typography>
        </Link>
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
            <Box sx={{ pt: -1, pb: 2 }}>
              <AuthorTitle author={author} viewNum={author.postViewNum} />
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
            <Box
              sx={{
                width: '100%',
                display: 'flex',
                alignItems: 'center',
                flexWrap: 'wrap',
              }}
            >
              <MetaData
                column={column}
                postsNum={postsNum}
                followNum={followNum}
              />
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
          </Grid>
        </Grid>
      </CardContent>
    </Card>
  )
}
