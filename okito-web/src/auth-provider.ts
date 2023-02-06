import { User } from './types/user'
import { baseUrl } from './consts'
import { LoginForm } from './types/login-param'
import axios from 'axios'

const localStorageKey = '__auth_provider_token__'

export const getToken = () => {
  window.localStorage.getItem(localStorageKey)
}

export const setToken = (token?: string) => {
  window.localStorage.setItem(localStorageKey, token || '')
}

// TODO
export const login = (data: LoginForm) => {
  return axios
    .create({
      baseURL: baseUrl,
      timeout: 5000,
    })
    .post('/auth/login', data)
    .then((res) => {
      if (res.data.status === 20) {
        const data = res.data.data
        setToken(data.tokenValue)
        return res
      } else {
        console.error(res.data.message)
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
