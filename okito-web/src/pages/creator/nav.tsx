import { useState } from 'react'
import {
  Box,
  Button,
  Collapse,
  Link,
  List,
  ListItem,
  ListItemIcon,
  ListItemText,
  Paper,
  styled,
  Typography,
} from '@mui/material'
import { User } from '../../types/user'
import AuthorAvatar from '../../components/author-avatar'

import HomeOutlinedIcon from '@mui/icons-material/HomeOutlined'
import ExpandLessOutlinedIcon from '@mui/icons-material/ExpandLessOutlined'
import ExpandMoreOutlinedIcon from '@mui/icons-material/ExpandMoreOutlined'
import SubjectOutlinedIcon from '@mui/icons-material/SubjectOutlined'
import DataThresholdingOutlinedIcon from '@mui/icons-material/DataThresholdingOutlined'
import AutoFixHighOutlinedIcon from '@mui/icons-material/AutoFixHighOutlined'
import HelpOutlineOutlinedIcon from '@mui/icons-material/HelpOutlineOutlined'

const UserInfo = ({ currentUser }: { currentUser: User }) => {
  return (
    <Box>
      <Box sx={{ display: 'flex', alignItems: 'center' }}>
        <AuthorAvatar
          width={50}
          height={50}
          author={{
            id: currentUser.id,
            username: currentUser.username,
            avatar: currentUser.avatar,
          }}
        />
        <Link underline="none" color="text.primary" sx={{ cursor: 'pointer' }}>
          <Typography variant="h6" fontWeight={500} sx={{ ml: 2 }}>
            {currentUser.username}
          </Typography>
        </Link>
      </Box>
      <Box sx={{ pt: 3, pb: 3, display: 'flex' }}>
        <Button fullWidth variant="contained" href="/editor" target="_blank">
          {'写文章'}
        </Button>
      </Box>
    </Box>
  )
}

const Menu = () => {
  const [manageOpen, setManageOpen] = useState<boolean>(true)
  const [dataOpen, setDataOpen] = useState<boolean>(true)
  const [editOpen, setEditOpen] = useState<boolean>(true)
  const [helpOpen, setHelpOpen] = useState<boolean>(true)

  function handleManageClick() {
    setManageOpen(!manageOpen)
  }

  function handleDataClick() {
    setDataOpen(!dataOpen)
  }

  function handleEditClick() {
    setEditOpen(!editOpen)
  }

  function handleHelpClick() {
    setHelpOpen(!helpOpen)
  }

  const CustomListItemIcon = styled(ListItemIcon)(() => ({
    minWidth: '40px',
  }))

  const CustomListItemText = styled(ListItemText)(() => ({
    // paddingLeft: '40px',
    ':hover': {
      cursor: 'pointer',
    },
  }))

  return (
    <Box>
      <List component="nav" disablePadding>
        <ListItem>
          <CustomListItemIcon>
            <HomeOutlinedIcon />
          </CustomListItemIcon>
          <CustomListItemText primary="首页" />
        </ListItem>
        <ListItem onClick={handleManageClick}>
          <CustomListItemIcon>
            <SubjectOutlinedIcon />
          </CustomListItemIcon>
          <CustomListItemText primary="内容管理" />
          {manageOpen ? <ExpandLessOutlinedIcon /> : <ExpandMoreOutlinedIcon />}
        </ListItem>
        <Collapse in={manageOpen} timeout="auto" unmountOnExit>
          <List component="div" disablePadding>
            <ListItem>
              <CustomListItemIcon />
              <CustomListItemText primary="文章管理" />
            </ListItem>
            <ListItem>
              <CustomListItemIcon />
              <CustomListItemText primary="专栏管理" />
            </ListItem>
            <ListItem>
              <CustomListItemIcon />
              <CustomListItemText primary="想法管理" />
            </ListItem>
          </List>
        </Collapse>
        <ListItem onClick={handleDataClick}>
          <CustomListItemIcon>
            <DataThresholdingOutlinedIcon />
          </CustomListItemIcon>
          <CustomListItemText primary="数据中心" />
          {dataOpen ? <ExpandLessOutlinedIcon /> : <ExpandMoreOutlinedIcon />}
        </ListItem>
        <Collapse in={dataOpen} timeout="auto" unmountOnExit>
          <List component="div" disablePadding>
            <ListItem>
              <CustomListItemIcon />
              <CustomListItemText primary="内容数据" />
            </ListItem>
            <ListItem>
              <CustomListItemIcon />
              <CustomListItemText primary="关注者数据" />
            </ListItem>
          </List>
        </Collapse>
        <ListItem onClick={handleEditClick}>
          <CustomListItemIcon>
            <AutoFixHighOutlinedIcon />
          </CustomListItemIcon>
          <CustomListItemText primary="创作工具" />
          {editOpen ? <ExpandLessOutlinedIcon /> : <ExpandMoreOutlinedIcon />}
        </ListItem>
        <Collapse in={editOpen} timeout="auto" unmountOnExit>
          <List component="div" disablePadding>
            <ListItem>
              <CustomListItemIcon />
              <CustomListItemText primary="文章导入发布" />
            </ListItem>
          </List>
        </Collapse>
        <ListItem onClick={handleHelpClick}>
          <CustomListItemIcon>
            <HelpOutlineOutlinedIcon />
          </CustomListItemIcon>
          <CustomListItemText primary="帮助中心" />
          {helpOpen ? <ExpandLessOutlinedIcon /> : <ExpandMoreOutlinedIcon />}
        </ListItem>
        <Collapse in={helpOpen} timeout="auto" unmountOnExit>
          <List component="div" disablePadding>
            <ListItem>
              <CustomListItemIcon />
              <CustomListItemText primary="常见问题" />
            </ListItem>
          </List>
        </Collapse>
      </List>
    </Box>
  )
}

interface CreatorNavProps {
  currentUser: User
}

export const CreatorNav = ({ currentUser }: CreatorNavProps) => {
  return (
    <Box>
      <Paper sx={{ p: 2.5 }}>
        <UserInfo currentUser={currentUser} />
        <Menu />
      </Paper>
    </Box>
  )
}
