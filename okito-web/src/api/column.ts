import client from '../utils/axios-client'

const prefix: string = '/column'

export function selectColumnsByUserIdAndType(userId: number, type: number) {
  return client({
    url: `${prefix}/user/${userId}`,
    method: 'GET',
    params: {
      type: type,
    },
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
