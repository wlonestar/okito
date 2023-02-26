import { FormEvent, useRef, useState } from 'react'
import { Box, Button, Link, TextField } from '@mui/material'
import { checkEmailExists, checkUsernameExists } from '../../../api/user'
import { SignUpForm } from '../../../types/auth-form'

interface SignUpCardProps {
  register: (form: SignUpForm) => Promise<void>
}

export const SignUpCard = ({ register }: SignUpCardProps) => {
  const emailValueRef = useRef('')
  const usernameValueRef = useRef('')
  const passwordValueRef = useRef('')
  const [emailValid, setEmailValid] = useState<boolean>(false)
  const [usernameValid, setUsernameValid] = useState<boolean>(false)
  const [passwordValid, setPasswordValid] = useState<boolean>(false)
  const [emailHelper, setEmailHelper] = useState<string>('')
  const [usernameHelper, setUsernameHelper] = useState<string>('')
  const [passwordHelper, setPasswordHelper] = useState<string>('')

  const handleEmailChange = async () => {
    // @ts-ignore
    const email = emailValueRef.current.value
    if (email.trim() !== '') {
      if (/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i.test(email.trim())) {
        const res = await checkEmailExists(email.trim())
        if (res.status === 20) {
          if (!res.data) {
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

  const handleUsernameChange = async () => {
    // @ts-ignore
    const username = usernameValueRef.current.value
    if (username.trim() !== '') {
      const res = await checkUsernameExists(username.trim())
      if (res.status === 20) {
        if (!res.data) {
          setUsernameValid(true)
          setUsernameHelper('')
        } else {
          setUsernameValid(false)
          setUsernameHelper('用户名已存在')
        }
      }
    } else {
      setUsernameValid(false)
      setUsernameHelper('请输入密码')
    }
  }

  const handlePasswordChange = () => {
    // @ts-ignore
    const password = passwordValueRef.current.value
    if (password.trim() !== '') {
      setPasswordValid(true)
      setPasswordHelper('')
    } else {
      setPasswordValid(false)
      setPasswordHelper('请输入密码')
    }
  }

  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    const data = new FormData(event.currentTarget)
    const registerParam: SignUpForm = {
      email: data.get('email')?.toString(),
      username: data.get('username')?.toString(),
      password: data.get('password')?.toString(),
    }
    register(registerParam)
      .then(() => {
        window.location.assign('/login')
      })
      .catch((e) => {
        // register failed
        console.log(e)
      })
  }

  return (
    <Box
      component="form"
      onSubmit={handleSubmit}
      noValidate
      sx={{ margin: '30px' }}
    >
      <TextField
        margin="normal"
        required
        fullWidth
        id="email"
        name="email"
        label="邮箱"
        autoComplete="email"
        autoFocus
        error={!emailValid}
        helperText={emailHelper}
        inputRef={emailValueRef}
        onChange={handleEmailChange}
      />
      <TextField
        margin="normal"
        required
        fullWidth
        id="username"
        name="username"
        label="用户名"
        autoComplete="current-username"
        error={!usernameValid}
        helperText={usernameHelper}
        inputRef={usernameValueRef}
        onChange={handleUsernameChange}
      />
      <TextField
        margin="normal"
        required
        fullWidth
        id="password"
        name="password"
        label="密码"
        type="password"
        autoComplete="current-password"
        error={!passwordValid}
        helperText={passwordHelper}
        inputRef={passwordValueRef}
        onChange={handlePasswordChange}
      />
      <Button
        type="submit"
        fullWidth
        variant="contained"
        disabled={!(emailValid && usernameValid && passwordValid)}
        sx={{ mt: 3, mb: 2 }}
      >
        {'注册'}
      </Button>
      <Box sx={{ display: 'flex' }}>
        <Link href={'/login'} variant="body2" sx={{ ml: 'auto' }}>
          {'已有账号？去登录'}
        </Link>
      </Box>
    </Box>
  )
}
