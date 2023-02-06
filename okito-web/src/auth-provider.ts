import { useState } from 'react'
import { baseUrl } from './consts'
import { LoginForm } from './types/login-param'

const localStorageKey = '__auth_provider_token__'

export const getToken = () => {
  return window.localStorage.getItem(localStorageKey)
}

export const setToken = (token?: string) => {
  window.localStorage.setItem(localStorageKey, token || '')
}

// TODO: add useUser method
// if get token, set current user by user id -> login
// otherwise set user null -> no login
export const useUser = () => {}

export const useToken = () => {
  const [token, setToken] = useState(getToken())
  const saveToken = (userToken: string) => {
    window.localStorage.setItem(localStorageKey, userToken)
    setToken(userToken)
  }
  return [token, saveToken]
}

export const handleUserResponse = (token: string) => {
  setToken(token)
  return token
}

// TODO
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
      const token = data.data.tokenValue
      return handleUserResponse(token)
    } else {
      return Promise.reject(data)
    }
  })
}

// TODO
export const register = (data: { username: string; password: string }) => {
  return fetch(`${baseUrl}/auth/register`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data),
  }).then(async (res) => {
    if (res.ok) {
      // return handleUserResponse(await res.json())
    } else {
      return Promise.reject(data)
    }
  })
}

export const logout = async () => {
  window.localStorage.removeItem(localStorageKey)
}
