import React, { useEffect, useState } from 'react'
import {
  Box,
  Button,
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
import MetaData from '../column-card/meta-data'
import { Column } from '../../../types/column'
import {
  selectUserColumnFollowByUserIdAndColumnId,
  updateFollowColumn,
} from '../../../api/user'
import { useMount } from '../../../utils'
import { User } from '../../../types/user'
import AuthorTitle from '../../author-title'
import ActionList from '../column-card/action-list'
import { EditColumnDialog } from '../../dialog/column-dialog/edit-column'
import { DeleteColumnDialog } from '../../dialog/column-dialog/delete-column'

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
  const [editOpen, setEditOpen] = useState<boolean>(false)
  const [deleteOpen, setDeleteOpen] = useState<boolean>(false)

  const handleEditClose = () => {
    setEditOpen(false)
  }

  const handleEditOpen = () => {
    setEditOpen(true)
    handleCloseActionMenu()
  }

  const handleDeleteClose = () => {
    setDeleteOpen(false)
  }

  const handleDeleteOpen = () => {
    setDeleteOpen(true)
    handleCloseActionMenu()
  }

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

  useEffect(() => {}, [column])

  return (
    <Box>
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
              height="150"
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
                height: '48px',
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
                  size="small"
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
                  {'?????????'}
                </Button>
              ) : (
                <Button
                  variant="contained"
                  size="small"
                  onClick={handleClick}
                  sx={{ marginLeft: 'auto' }}
                >
                  <AddOutlinedIcon />
                  {'??????'}
                </Button>
              )}
              <ActionList
                column={column}
                anchorElColumn={anchorElColumn}
                handleEditOpen={handleEditOpen}
                handleDeleteOpen={handleDeleteOpen}
                handleCloseActionMenu={handleCloseActionMenu}
              />
              <EditColumnDialog
                open={editOpen}
                column={column}
                handleClose={handleEditClose}
                currentUser={currentUser}
              />
              <DeleteColumnDialog
                open={deleteOpen}
                column={column}
                handleClose={handleDeleteClose}
                currentUser={currentUser}
              />
            </Box>
          </Grid>
        </Grid>
      </CardContent>
    </Box>
  )
}
