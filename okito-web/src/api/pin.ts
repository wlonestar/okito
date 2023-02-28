import client from '../utils/axios-client'
import { PinParam } from '../types/pin'

const prefix: string = '/pin'

export function selectRecommend100Pins() {
  return client({
    url: `${prefix}/recommend`,
    method: 'GET',
  })
}

export function selectAllPins() {
  return client({
    url: `${prefix}`,
    method: 'GET',
  })
}

export function selectPinsByAuthorId(authorId: number) {
  return client({
    url: `${prefix}/author/${authorId}`,
    method: 'GET',
  })
}

export function selectPinsByUserFollowed(userId: number) {
  return client({
    url: `${prefix}/followed/${userId}`,
    method: 'GET',
  })
}

export function selectPinById(id: number) {
  return client({
    url: `${prefix}/${id}`,
    method: 'GET',
  })
}

export function countPinsByAuthorId(authorId: number) {
  return client({
    url: `${prefix}/count/author/${authorId}`,
    method: 'GET',
  })
}

export function addPin(param: PinParam) {
  return client({
    url: `${prefix}`,
    method: 'POST',
    data: param,
  })
}

interface SelectPinLikeProp {
  pinId: number
  userId: number
}

export function selectPinLikeById(param: SelectPinLikeProp) {
  return client({
    url: `${prefix}/like/single`,
    method: 'GET',
    params: {
      ...param,
    },
  })
}

interface LikeActionToPinProp {
  pinId: number
  userId: number
  type: number
}

export function likeActionToPin(param: LikeActionToPinProp) {
  return client({
    url: `${prefix}/like`,
    method: 'PUT',
    data: param,
  })
}
