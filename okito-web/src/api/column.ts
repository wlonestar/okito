import client from '../utils/axios-client'

const prefix: string = '/column'

export function selectColumnsByAuthorId(authorId: number) {
  return client({
    url: `${prefix}/author/${authorId}`,
    method: 'GET',
  })
}

export function selectColumnsFollowedByUserId(userId: number) {
  return client({
    url: `${prefix}/follow/${userId}`,
    method: 'GET',
  })
}

export function selectColumnById(id: number) {
  return client({
    url: `${prefix}/${id}`,
    method: 'GET',
  })
}

export function countPostsByColumnId(columnId: number) {
  return client({
    url: `${prefix}/count/post/${columnId}`,
    method: 'GET',
  })
}

export function countFollowByColumnId(columnId: number) {
  return client({
    url: `${prefix}/count/follow/${columnId}`,
    method: 'GET',
  })
}
