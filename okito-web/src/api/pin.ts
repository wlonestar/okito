import client from '../utils/axios-client'

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
