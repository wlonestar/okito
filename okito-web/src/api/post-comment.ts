import client from '../utils/axios-client'

export function selectPostCommentsByPostId(id: number) {
  return client({
    url: `/post/comment/post/${id}`,
    method: 'GET',
  })
}

export function countPostCommentsByPostId(id: number) {
  return client({
    url: `/post/comment/count/post/${id}`,
    method: 'GET',
  })
}
