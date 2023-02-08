import qs from 'qs'
import { baseUrl } from '../consts'
import * as auth from '../auth-provider'
import { useAuth } from '../context/auth-context'
import { User } from '../types/user'

interface Config extends RequestInit {
  token?: string
  data?: object
}

export const http = async (
  endpoint: string,
  { data, token, headers, ...customConfig }: Config
) => {
  const config = {
    method: 'GET',
    headers: {
      Authorization: token ? `${token}` : '',
      'Content-Type': data ? 'application/json' : '',
    },
    ...customConfig,
  }

  if (config.method.toUpperCase() === 'GET') {
    endpoint += `?${qs.stringify(data)}`
  } else {
    config.body = JSON.stringify(data || {})
  }

  return window.fetch(`${baseUrl}/${endpoint}`, config).then(async (res) => {
    if (res.status === 401) {
      await auth.logout()
      window.location.reload()
      return Promise.reject({ message: 'please sign-in again' })
    }
    const data = await res.json()
    if (res.ok) {
      const user: User = data.data
      console.log(user)
      return user
    } else {
      return Promise.reject(data)
    }
  })
}

// Deprecated
export const useHttp = () => {
  const { user } = useAuth()
  return (...[endpoint, config]: Parameters<typeof http>) =>
    http(endpoint, { ...config, token: user?.token })
}
