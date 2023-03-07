import client from '../utils/axios-client'
import { Column } from '../types/column'

const prefix: string = '/column'

export function selectColumnsByAuthorId(authorId: number) {
  return client({
    url: `${prefix}/author/${authorId}`,
    method: 'GET',
  })
}

export function selectColumnsByFollowerId(followerId: number) {
  return client({
    url: `${prefix}/follower/${followerId}`,
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

export function updateColumn(column: Column) {
  return client({
    url: `${prefix}`,
    method: 'PUT',
    data: column,
  })
}

export function deleteColumnById(id: number) {
  return client({
    url: `${prefix}/${id}`,
    method: 'DELETE',
  })
}
