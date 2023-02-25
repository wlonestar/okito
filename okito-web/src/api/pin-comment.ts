import client from '../utils/axios-client'
import { PinCommentParam } from '../types/pin-comment'

const prefix: string = '/pin/comment'

export function selectPinCommentsByPinId(pinId: number) {
  return client({
    url: `${prefix}/pin/${pinId}`,
    method: 'GET',
  })
}

export function selectPinCommentsSecondaryById(id: number) {
  return client({
    url: `${prefix}/secondary/${id}`,
    method: 'GET',
  })
}

export function countPinCommentsByPinId(id: number) {
  return client({
    url: `${prefix}/count/pin/${id}`,
    method: 'GET',
  })
}

export function selectPinCommentById(id: number | undefined) {
  return client({
    url: `${prefix}/${id}`,
    method: 'GET',
  })
}

export function addPinComment(param: PinCommentParam) {
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

export function selectPinCommentLikeById(param: SelectPinCommentLikeProp) {
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

export function likeActionToPinComment(param: LikeActionToPinCommentProp) {
  return client({
    url: `${prefix}/like`,
    method: 'PUT',
    data: param,
  })
}
