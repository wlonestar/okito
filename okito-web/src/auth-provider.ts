import { baseUrl } from './consts'
import { User } from './types/user'
import { SignInForm, SignUpForm } from './types/auth-form'
import { getDevice } from './utils/get-device'

const localAuthStorageKey = '__auth_provider_token__'

export const getToken = () => {
  return window.localStorage.getItem(localAuthStorageKey)
}

export const setToken = (token?: string) => {
  window.localStorage.setItem(localAuthStorageKey, token || '')
}

export const handleUserResponse = (user: User) => {
  setToken(user.token || '')
  return user
}

export const login = (data: SignInForm) => {
  return fetch(`${baseUrl}/auth/login`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data),
  }).then(async (res) => {
    if (res.ok) {
      const data = await res.json()
      if (data.status === 20) {
        const user: User = data.data
        return handleUserResponse(user)
      } else {
        return Promise.reject(data)
      }
    } else {
      return Promise.reject(data)
    }
  })
}

export const register = (data: SignUpForm) => {
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
  fetch(`${baseUrl}/auth/logout`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'auth-token': `Bearer ${getToken()}`,
    },
    body: JSON.stringify(getDevice()),
  }).then(async (res) => {
    if (res.ok) {
      const data = await res.json()
      console.log(data)
    } else {
      console.log(res)
    }
  })
  window.localStorage.removeItem(localAuthStorageKey)
}
