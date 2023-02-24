import React from 'react'
import {
  Box,
  Button,
  Divider,
  Grid,
  Icon,
  Link,
  List,
  ListItem,
  ListItemText,
  Paper,
  Typography,
} from '@mui/material'
import { User } from '../../types/user'
import ThumbUpIcon from '@mui/icons-material/ThumbUp'
import { VisibilityRounded } from '@mui/icons-material'
import { formatDate } from '../../utils/date'

interface StickyProps {
  user: User
  collectionsNum?: number
  tagsNum?: number
}

const Achieve = ({ user }: StickyProps) => {
  return (
    <Paper sx={{ p: 2, display: 'flex', flexDirection: 'column' }}>
      <Box>
        <Typography>{'个人成就'}</Typography>
      </Box>
      <Divider sx={{ mb: 2, mt: 2 }} />
      <Box
        color="text.secondary"
        sx={{
          display: 'flex',
          pr: 3,
          ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
          cursor: 'unset',
        }}
      >
        <Icon sx={{ pr: 4 }}>
          <ThumbUpIcon />
        </Icon>
        <Typography color="text.secondary">{`文章被点赞 ${user.postLikeNum}`}</Typography>
      </Box>
      <Box
        color="text.secondary"
        sx={{
          display: 'flex',
          pr: 3,
          pt: 2,
          ':hover': { backgroundColor: 'rgba(0, 0, 0, 0)' },
          cursor: 'unset',
        }}
      >
        <Icon sx={{ pr: 4 }}>
          <VisibilityRounded />
        </Icon>
        <Typography color="text.secondary">{`文章被阅读 ${user.postViewNum}`}</Typography>
      </Box>
    </Paper>
  )
}

const Follow = ({ user }: StickyProps) => {
  return (
    <Paper sx={{ mt: 2 }}>
      <Grid container>
        <Grid item xs>
          <Button
            fullWidth
            sx={{ p: 2 }}
            href={`/user/${user.id}/follows?q=following`}
          >
            <Typography variant="body1">{'关注了'}</Typography>
            <Typography variant="body2">{user.followedNum}</Typography>
          </Button>
        </Grid>
        <Divider orientation="vertical" flexItem />
        <Grid item xs>
          <Button
            fullWidth
            sx={{ p: 2 }}
            href={`/user/${user.id}/follows?q=followers`}
          >
            <Typography variant="body1">{'关注者'}</Typography>
            <Typography variant="body2">{user.followerNum}</Typography>
          </Button>
        </Grid>
      </Grid>
    </Paper>
  )
}

const MoreInfo = ({ user, collectionsNum, tagsNum }: StickyProps) => {
  return (
    <Paper sx={{ mt: 2 }}>
      <List dense={false}>
        <ListItem secondaryAction={collectionsNum}>
          <ListItemText>
            <Link
              underline="hover"
              color="text.primary"
              sx={{ ':hover': { color: 'text.secondary' } }}
              href={`/user/${user.id}/collections`}
            >
              {'收藏夹'}
            </Link>
          </ListItemText>
        </ListItem>
        <Divider />
        <ListItem secondaryAction={tagsNum}>
          <ListItemText>
            <Link
              underline="hover"
              color="text.primary"
              sx={{ ':hover': { color: 'text.secondary' } }}
              href={`/user/${user.id}/follows?q=followed_tags`}
            >
              {'关注标签'}
            </Link>
          </ListItemText>
        </ListItem>
        <Divider />
        <ListItem secondaryAction={formatDate(user.joinTime)}>
          <ListItemText color="text.secondary">{'加入于'}</ListItemText>
        </ListItem>
      </List>
    </Paper>
  )
}

export default function Sticky({ user, collectionsNum, tagsNum }: StickyProps) {
  return (
    <>
      <Achieve user={user} />
      <Follow user={user} />
      <MoreInfo user={user} collectionsNum={collectionsNum} tagsNum={tagsNum} />
    </>
  )
}
