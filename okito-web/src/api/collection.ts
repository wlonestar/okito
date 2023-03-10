import client from '../utils/axios-client'
import { Collection } from '../types/collection'

const prefix: string = '/collection'

export function selectCollectionsByAuthorId(authorId: number) {
  return client({
    url: `${prefix}/author/${authorId}`,
    method: 'GET',
  })
}

export function selectCollectionsByFollowerId(followerId: number) {
  return client({
    url: `${prefix}/follower/${followerId}`,
    method: 'GET',
  })
}

export function selectCollectionById(id: number) {
  return client({
    url: `${prefix}/${id}`,
    method: 'GET',
  })
}

export function countCollectionsByAuthorId(authorId: number) {
  return client({
    url: `${prefix}/count/posts/${authorId}`,
    method: 'GET',
  })
}

export function countPostsByCollectionId(collectionId: number) {
  return client({
    url: `${prefix}/count/collection/${collectionId}`,
    method: 'GET',
  })
}

export function countFollowNumByCollectionId(collectionId: number) {
  return client({
    url: `${prefix}/count/follow/${collectionId}`,
    method: 'GET',
  })
}

export function addCollection(param: Collection) {
  return client({
    url: '/collection',
    method: 'POST',
    data: {
      ...param,
    },
  })
}

export function updateCollection(param: Collection) {
  return client({
    url: '/collection',
    method: 'PUT',
    data: {
      ...param,
    },
  })
}

export function deleteCollectionById(id: number) {
  return client({
    url: `/collection/${id}`,
    method: 'DELETE',
  })
}
