import client from '../utils/axios-client'

export function selectAllPosts() {
  return client({
    url: '/post',
    method: 'GET',
  })
}
