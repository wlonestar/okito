import client from '../utils/axios-client'
import { PageParam } from '../types/page-param'
import { Pin } from '../types/pin'

export function selectAllPins() {
  return client({
    url: '/pin',
    method: 'GET',
  })
}

export function selectAllPinsByAuthorId(authorId: number) {
  return client({
    url: `/pin/${authorId}`,
    method: 'GET',
  })
}

export function selectAllPinsByPage(param: PageParam) {
  return client({
    url: '/pin/page',
    method: 'GET',
    params: {
      page: param.page,
      size: param.size,
      sort: param.sort,
    },
  })
}

export function selectAllPinsByAuthorIdAndPage(
  authorId: number,
  param: PageParam
) {
  return client({
    url: `/pin/page/${authorId}`,
    method: 'GET',
    params: {
      page: param.page,
      size: param.size,
      sort: param.sort,
    },
  })
}

export function selectById(id: number) {
  return client({
    url: `/pin/${id}`,
    method: 'GET',
  })
}

export function addPin(pin?: Pin) {
  return client({
    url: '/pin',
    method: 'POST',
    data: pin,
  })
}

export function updatePin(pin?: Pin) {
  return client({
    url: '/pin',
    method: 'PUT',
    data: pin,
  })
}

export function deletePinById(id?: number) {
  return client({
    url: `/pin/${id}`,
    method: 'DELETE',
  })
}
