import client from '../utils/axios-client'
import { PinParam } from '../types/pin'

const prefix: string = '/pin'

export function selectAllPins() {
  return client({
    url: `${prefix}`,
    method: 'GET',
  })
}

export function selectAllPinsByAuthorId(authorId: number) {
  return client({
    url: `${prefix}/author/${authorId}`,
  })
}

export function selectPinById(id: number) {
  return client({
    url: `${prefix}/${id}`,
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
