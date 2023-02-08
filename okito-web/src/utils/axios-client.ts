import axios from 'axios'
import { baseUrl } from '../consts'

const client = axios.create({
  baseURL: baseUrl,
  timeout: 5000,
})

client.interceptors.request.use(
  (config) => {
    config.headers['Content-Type'] = 'application/json;charset=utf-8'
    return config
  },
  (error) => {
    console.log('error: ' + error)
    return Promise.reject(error)
  },
  { synchronous: true }
)

client.interceptors.response.use(
  (res) => {
    let resp = res.data
    if (res.config.responseType === 'blob') {
      return resp
    }
    if (typeof resp === 'string') {
      resp = resp ? JSON.parse(resp) : resp
    }
    return resp
  },
  (error) => {
    console.log('error: ' + error)
    return Promise.reject(error)
  }
)

export default client
