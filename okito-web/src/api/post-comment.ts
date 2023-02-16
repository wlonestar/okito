import client from '../utils/axios-client'
import { PostCommentParam } from '../types/post-comment'

const prefix: string = '/post/comment'

export function selectPostCommentsByPostId(id: number) {
  return client({
    url: `${prefix}/post/${id}`,
    method: 'GET',
  })
}

export function selectPostCommentsSecondaryByPostId(id: number) {
  return client({
    url: `${prefix}/secondary/${id}`,
    method: 'GET',
  })
}

export function countPostCommentsByPostId(id: number) {
  return client({
    url: `${prefix}/count/post/${id}`,
    method: 'GET',
  })
}

export function selectPostCommentById(id: number | undefined) {
  return client({
    url: `${prefix}/${id}`,
    method: 'GET',
  })
}

export function addPostComment(param: PostCommentParam) {
  return client({
    url: `${prefix}`,
    method: 'POST',
    data: param,
  })
}
