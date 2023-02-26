import {
  Box,
  ButtonBase,
  Divider,
  Link,
  Paper,
  Typography,
} from '@mui/material'
import AuthorAvatar from '../../components/author-avatar'
import { User, defaultUser } from '../../types/user'
import { useMount } from '../../utils'
import { useState } from 'react'
import { countPinsByAuthorId } from '../../api/pin'
import { selectUserById } from '../../api/user'
import { defaultAvatar } from '../../consts'

interface AuthorCardProps {
  currentUser: User | null
}

const AuthorCard = ({ currentUser }: AuthorCardProps) => {
  const [pinNum, setPinNum] = useState<number>(0)
  const [user, setUser] = useState<User>(defaultUser)
  const [authorAvatar, setAuthorAvatar] = useState({
    id: 0,
    username: '',
    avatar: '',
  })

  useMount(async () => {
    if (currentUser !== null) {
      setAuthorAvatar({
        id: currentUser.id,
        username: currentUser.username,
        avatar: currentUser.avatar,
      })
      const pinNum = await countPinsByAuthorId(currentUser.id)
      setPinNum(pinNum.data)
      const user = await selectUserById(currentUser.id)
      setUser(user.data)
    }
  })

  return (
    <Paper>
      <Box>
        {currentUser !== null ? (
          <Box sx={{ p: 2, pb: 0, display: 'flex', alignItems: 'center' }}>
            <AuthorAvatar author={authorAvatar} width={48} height={48} />
            <Link
              underline="none"
              color="text.primary"
              href={`/user/${authorAvatar.id}`}
              target="_blank"
              sx={{ ml: 2, cursor: 'pointer' }}
            >
              <Typography fontWeight={500}>{authorAvatar.username}</Typography>
            </Link>
          </Box>
        ) : (
          <Box sx={{ p: 2, pb: 0, display: 'flex', alignItems: 'center' }}>
            <ButtonBase
              href={'/login'}
              target="_blank"
              sx={{ width: 48, height: 48 }}
            >
              <img
                style={{
                  margin: 'auto',
                  display: 'block',
                  maxWidth: '100%',
                  maxHeight: '100%',
                  borderRadius: 24,
                }}
                src={defaultAvatar}
                alt={''}
              />
            </ButtonBase>
            <Link
              underline="none"
              color="text.primary"
              href={'/login'}
              target="_blank"
              sx={{ ml: 2, cursor: 'pointer' }}
            >
              <Typography color="primary" fontWeight={500}>
                {'登录/注册'}
              </Typography>
            </Link>
          </Box>
        )}
        <Divider sx={{ m: 2 }} />
        {currentUser !== null ? (
          <Box
            sx={{
              p: 2,
              pt: 0,
              display: 'flex',
              justifyContent: 'space-evenly',
              alignItems: 'center',
            }}
          >
            <Link
              underline="none"
              color="text.primary"
              href={`/user/${currentUser.id}/pins`}
              target="_blank"
              sx={{ mr: 3 }}
            >
              <Typography variant="h6" fontWeight={600}>
                {pinNum}
              </Typography>
              <Typography variant="body2" color="text.secondary">
                {'想法'}
              </Typography>
            </Link>
            <Link
              underline="none"
              color="text.primary"
              href={`/user/${currentUser.id}/follows?q=following`}
              target="_blank"
              sx={{ mr: 3 }}
            >
              <Typography variant="h6" fontWeight={600}>
                {user.followedNum}
              </Typography>
              <Typography variant="body2" color="text.secondary">
                {'关注'}
              </Typography>
            </Link>
            <Link
              underline="none"
              color="text.primary"
              href={`/user/${currentUser.id}/follows?q=followers`}
              target="_blank"
            >
              <Typography variant="h6" fontWeight={600}>
                {user.followerNum}
              </Typography>
              <Typography variant="body2" color="text.secondary">
                {'关注者'}
              </Typography>
            </Link>
          </Box>
        ) : (
          <Box
            sx={{
              p: 2,
              pt: 0,
              display: 'flex',
              justifyContent: 'space-evenly',
              alignItems: 'center',
            }}
          >
            <Link underline="none" color="text.primary" sx={{ mr: 3 }}>
              <Typography variant="h6" fontWeight={600}>
                {'-'}
              </Typography>
              <Typography variant="body2" color="text.secondary">
                {'想法'}
              </Typography>
            </Link>
            <Link underline="none" color="text.primary" sx={{ mr: 3 }}>
              <Typography variant="h6" fontWeight={600}>
                {'-'}
              </Typography>
              <Typography variant="body2" color="text.secondary">
                {'关注'}
              </Typography>
            </Link>
            <Link underline="none" color="text.primary">
              <Typography variant="h6" fontWeight={600}>
                {'-'}
              </Typography>
              <Typography variant="body2" color="text.secondary">
                {'关注者'}
              </Typography>
            </Link>
          </Box>
        )}
      </Box>
    </Paper>
  )
}

interface SideProps {
  currentUser: User | null
}

export default function Side({ currentUser }: SideProps) {
  return <AuthorCard currentUser={currentUser} />
}
