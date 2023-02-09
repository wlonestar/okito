import client from '../utils/axios-client'
import { PostCommentParam } from '../types/post-comment'

export function selectPostCommentsByPostId(id: number) {
  return client({
    url: `/post/comment/post/${id}`,
    method: 'GET',
  })
}

export function selectPostCommentsSecondaryByPostId(id: number) {
  return client({
    url: `/post/comment/secondary/${id}`,
    method: 'GET',
  })
}

export function countPostCommentsByPostId(id: number) {
  return client({
    url: `/post/comment/count/post/${id}`,
    method: 'GET',
  })
}

export function selectPostCommentById(id: number | undefined) {
  return client({
    url: `/post/comment/${id}`,
    method: 'GET',
  })
}

export function addPostComment(param: PostCommentParam) {
  return client({
    url: '/post/comment',
    method: 'POST',
    data: param,
  })
}
