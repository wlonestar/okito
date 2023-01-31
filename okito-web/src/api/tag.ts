import client from '../utils/axios-client'

export function selectTagsByPostId(postId: number) {
  return client({
    url: `/tag/post/${postId}`,
    method: 'GET',
  })
}
