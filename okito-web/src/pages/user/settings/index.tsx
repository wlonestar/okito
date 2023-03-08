import {
  Box,
  Button,
  ButtonBase,
  Divider,
  Link,
  Paper,
  TextField,
  Typography,
} from '@mui/material'
import { User, UserParam } from '../../../types/user'
import ArrowBackIosNewOutlinedIcon from '@mui/icons-material/ArrowBackIosNewOutlined'
import { FormEvent, useRef, useState } from 'react'
import {
  checkEmailExists,
  checkUsernameExists,
  updateUser,
} from '../../../api/user'

interface SettingsPageProps {
  currentUser: User
}

export default function SettingsPage({ currentUser }: SettingsPageProps) {
  const user = currentUser

  const usernameValueRef = useRef('')
  const emailValueRef = useRef('')
  const [usernameValid, setUsernameValid] = useState<boolean>(true)
  const [emailValid, setEmailValid] = useState<boolean>(true)
  const [usernameHelper, setUsernameHelper] = useState<string>('')
  const [emailHelper, setEmailHelper] = useState<string>('')

  const handleUsernameChange = async () => {
    // @ts-ignore
    const username = usernameValueRef.current.value
    if (username.trim() !== '') {
      const res = await checkUsernameExists(username.trim())
      if (res.status === 20) {
        if (!res.data || username.trim() === user.username) {
          setUsernameValid(true)
          setUsernameHelper('')
        } else {
          setUsernameValid(false)
          setUsernameHelper('用户名已存在')
        }
      }
    } else {
      setUsernameValid(false)
      setUsernameHelper('请输入用户名')
    }
  }

  const handleEmailChange = async () => {
    // @ts-ignore
    const email = emailValueRef.current.value
    if (email.trim() !== '') {
      if (/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i.test(email.trim())) {
        const res = await checkEmailExists(email.trim())
        if (res.status === 20) {
          if (!res.data || email.trim() === user.email) {
            setEmailValid(true)
            setEmailHelper('')
          } else {
            setEmailValid(false)
            setEmailHelper('邮箱已被注册')
          }
        }
      } else {
        setEmailValid(false)
        setEmailHelper('邮箱格式不正确')
      }
    } else {
      setEmailValid(false)
      setEmailHelper('请输入邮箱')
    }
  }

  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    const data = new FormData(event.currentTarget)
    const param: UserParam = {
      id: user.id,
      username: data.get('username')?.toString(),
      email: data.get('email')?.toString(),
      avatar: user.avatar,
      bio: data.get('bio')?.toString(),
      homepage: data.get('homepage')?.toString(),
      intro: data.get('intro')?.toString(),
    }
    // console.log(param)
    updateUser(param).then((res) => {
      console.log(res)
    })
  }

  return (
    <Box sx={{ ml: 'auto', mr: 'auto', mt: 3, mb: 3 }}>
      <Paper sx={{ p: 1.5 }}>
        <Link
          underline="none"
          color="text.primary"
          href={`/user/${currentUser.id}`}
          sx={{ cursor: 'pointer', display: 'flex', alignItems: 'center' }}
        >
          <ArrowBackIosNewOutlinedIcon sx={{ scale: '0.9' }} />
          <Typography>{'返回个人主页'}</Typography>
        </Link>
      </Paper>
      <Paper sx={{ mt: 3, p: 2.5 }}>
        <Box>
          <Typography variant="h6" fontWeight={600}>
            {'个人资料'}
          </Typography>
          <Box sx={{ display: 'flex' }}>
            <Box component="form" onSubmit={handleSubmit} noValidate>
              <Divider sx={{ mt: 3 }} />
              <Box sx={{ display: 'flex', alignItems: 'baseline' }}>
                <Typography sx={{ p: 1, width: '100px' }}>
                  {'用户名'}
                </Typography>
                <TextField
                  size="small"
                  margin="normal"
                  required
                  id="username"
                  name="username"
                  placeholder="填写你的用户名"
                  defaultValue={user.username}
                  error={!usernameValid}
                  helperText={usernameHelper}
                  inputRef={usernameValueRef}
                  onChange={handleUsernameChange}
                  sx={{ width: '500px' }}
                />
              </Box>
              <Divider />
              <Box sx={{ display: 'flex', alignItems: 'baseline' }}>
                <Typography sx={{ p: 1, width: '100px' }}>{'邮箱'}</Typography>
                <TextField
                  size="small"
                  margin="normal"
                  required
                  id="email"
                  name="email"
                  placeholder="填写你的邮箱"
                  defaultValue={user.email}
                  error={!emailValid}
                  helperText={emailHelper}
                  inputRef={emailValueRef}
                  onChange={handleEmailChange}
                  sx={{ width: '500px' }}
                />
              </Box>
              <Divider />
              <Box sx={{ display: 'flex', alignItems: 'baseline' }}>
                <Typography sx={{ p: 1, width: '100px' }}>
                  {'个性签名'}
                </Typography>
                <TextField
                  size="small"
                  margin="normal"
                  required
                  id="bio"
                  name="bio"
                  placeholder="填写你的个性签名"
                  defaultValue={user.bio}
                  sx={{ width: '500px' }}
                />
              </Box>
              <Divider />
              <Box sx={{ display: 'flex', alignItems: 'baseline' }}>
                <Typography sx={{ p: 1, width: '100px' }}>
                  {'个人主页'}
                </Typography>
                <TextField
                  size="small"
                  margin="normal"
                  required
                  id="homepage"
                  name="homepage"
                  placeholder="填写你的个人主页"
                  defaultValue={user.homepage}
                  sx={{ width: '500px' }}
                />
              </Box>
              <Divider />
              <Box sx={{ display: 'flex', alignItems: 'baseline' }}>
                <Typography sx={{ p: 1, width: '100px' }}>
                  {'个人介绍'}
                </Typography>
                <TextField
                  size="small"
                  margin="normal"
                  required
                  multiline
                  rows={5}
                  id="intro"
                  name="intro"
                  placeholder="填写你的个人介绍"
                  defaultValue={user.intro}
                  sx={{ width: '500px' }}
                />
              </Box>
              <Divider />
              <Button
                type="submit"
                variant="contained"
                disabled={!(usernameValid && emailValid)}
                sx={{ mt: 3, left: '100px' }}
              >
                {'保存修改'}
              </Button>
            </Box>
            <Box sx={{ ml: 'auto', mr: 7 }}>
              <ButtonBase sx={{ width: 100, height: 100 }}>
                <img
                  style={{
                    margin: 'auto',
                    display: 'block',
                    maxWidth: '100%',
                    maxHeight: '100%',
                    borderRadius: 100 / 2,
                  }}
                  alt={user.username}
                  src={user.avatar}
                />
              </ButtonBase>
              <Typography sx={{ textAlign: 'center', mt: 1.5 }}>
                {'我的头像'}
              </Typography>
              <Typography
                variant="body2"
                color="text.secondary"
                width={100}
                sx={{ mt: 1 }}
              >
                {'支持 jpg, png, jpeg 格式大小5M以内的图片'}
              </Typography>
            </Box>
          </Box>
        </Box>
      </Paper>
    </Box>
  )
}
