import { baseUrl } from './consts'
import { LoginForm } from './types/login-param'
import { User } from './types/user'
import { RegisterForm } from './types/register-param'

const localStorageKey = '__auth_provider_token__'

export const getToken = () => {
  return window.localStorage.getItem(localStorageKey)
}

export const setToken = (token?: string) => {
  window.localStorage.setItem(localStorageKey, token || '')
}

export const handleUserResponse = (user: User) => {
  setToken(user.token)
  return user
}

export const login = (data: LoginForm) => {
  return fetch(`${baseUrl}/auth/login`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data),
  }).then(async (res) => {
    if (res.ok) {
      const data = await res.json()
      const user: User = data.data
      console.log(user)
      return handleUserResponse(user)
    } else {
      return Promise.reject(data)
    }
  })
}

export const register = (data: RegisterForm) => {
  return fetch(`${baseUrl}/auth/register`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data),
  }).then(async (res) => {
    if (res.ok) {
      return handleUserResponse(await res.json())
    } else {
      return Promise.reject(data)
    }
  })
}

export const logout = async () => {
  window.localStorage.removeItem(localStorageKey)
}
