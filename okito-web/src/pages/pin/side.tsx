import { useState } from 'react'
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
import { countPinsByAuthorId } from '../../api/pin'
import { selectUserById } from '../../api/user'
import { defaultAvatar } from '../../consts'

const Unauthenticated = () => {
  const links = [
    { index: 0, name: '想法' },
    { index: 1, name: '关注' },
    { index: 2, name: '关注者' },
  ]

  return (
    <Box>
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
      <Divider sx={{ m: 2 }} />
      <Box
        sx={{
          p: 2,
          pt: 0,
          display: 'flex',
          justifyContent: 'space-evenly',
          alignItems: 'center',
        }}
      >
        {links.map(({ index, name }) => (
          <Link
            key={index}
            underline="none"
            color="text.primary"
            sx={{ mr: 3 }}
          >
            <Typography variant="h6" fontWeight={600}>
              {'-'}
            </Typography>
            <Typography variant="body2" color="text.secondary">
              {name}
            </Typography>
          </Link>
        ))}
      </Box>
    </Box>
  )
}

interface AuthenticatedProps {
  authorAvatar: { id: number; username: string; avatar: string }
  user: User
  pinNum: number
  currentUser: User | null
}

const Authenticated = ({
  authorAvatar,
  user,
  pinNum,
  currentUser,
}: AuthenticatedProps) => {
  const links = [
    {
      index: 0,
      name: '想法',
      num: pinNum,
      to: `/user/${currentUser?.id}/pins`,
    },
    {
      index: 1,
      name: '关注',
      num: user.followedNum,
      to: `/user/${currentUser?.id}/follows?q=following`,
    },
    {
      index: 2,
      name: '关注者',
      num: user.followerNum,
      to: `/user/${currentUser?.id}/follows?q=followers`,
    },
  ]

  return (
    <>
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
      <Divider sx={{ m: 2 }} />
      <Box
        sx={{
          p: 2,
          pt: 0,
          display: 'flex',
          justifyContent: 'space-evenly',
          alignItems: 'center',
        }}
      >
        {links.map(({ index, name, num, to }) => (
          <Link
            key={index}
            underline="none"
            color="text.primary"
            href={to}
            target="_blank"
          >
            <Typography variant="h6" fontWeight={600}>
              {num}
            </Typography>
            <Typography variant="body2" color="text.secondary">
              {name}
            </Typography>
          </Link>
        ))}
      </Box>
    </>
  )
}

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
      {currentUser !== null ? (
        <Authenticated
          authorAvatar={authorAvatar}
          user={user}
          pinNum={pinNum}
          currentUser={currentUser}
        />
      ) : (
        <Unauthenticated />
      )}
    </Paper>
  )
}

interface SideProps {
  currentUser: User | null
}

export default function Side({ currentUser }: SideProps) {
  return <AuthorCard currentUser={currentUser} />
}
