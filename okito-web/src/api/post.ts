import client from '../utils/axios-client'

export function selectAllPosts() {
  return client({
    url: '/post',
    method: 'GET',
  })
}

export function selectPostsByTagId(tagId: number) {
  return client({
    url: `/post/tag/${tagId}`,
    method: 'GET',
  })
}

export function selectPostById(id: number) {
  return client({
    url: `/post/${id}`,
    method: 'GET',
  })
}
