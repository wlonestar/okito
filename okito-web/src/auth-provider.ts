import { baseUrl } from './consts'
import { SignInForm } from './types/sign-in-param'
import { User } from './types/user'
import { SignUpForm } from './types/sign-up-param'

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
        // console.log(data)
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

// TODO
export const logout = async () => {
  window.localStorage.removeItem(localAuthStorageKey)
}
