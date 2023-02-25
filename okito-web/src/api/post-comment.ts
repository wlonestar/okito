import client from '../utils/axios-client'
import { PostCommentParam } from '../types/post-comment'

const prefix: string = '/post/comment'

export function selectPostCommentsByPostId(id: number) {
  return client({
    url: `${prefix}/post/${id}`,
    method: 'GET',
  })
}

export function selectPostCommentsSecondaryById(id: number) {
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

interface SelectPinCommentLikeProp {
  commentId: number
  userId: number
}

export function selectPostCommentLikeById(param: SelectPinCommentLikeProp) {
  return client({
    url: `${prefix}/like/single`,
    method: 'GET',
    params: {
      ...param,
    },
  })
}

interface LikeActionToPinCommentProp {
  commentId: number
  userId: number
  type: number
}

export function likeActionToPostComment(param: LikeActionToPinCommentProp) {
  return client({
    url: `${prefix}/like`,
    method: 'PUT',
    data: param,
  })
}
