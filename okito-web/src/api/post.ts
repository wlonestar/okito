import client from '../utils/axios-client'

export function selectAllPosts() {
  return client({
    url: '/post',
    method: 'GET',
  })
}

export function selectPostsByTagId(id: number) {
  return client({
    url: `/post/tag/${id}`,
    method: 'GET',
  })
}

export function selectPostById(id: number) {
  return client({
    url: `/post/${id}`,
    method: 'GET',
  })
}
