import client from '../utils/axios-client'

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

export function countFollowByCollectionId(collectionId: number) {
  return client({
    url: `${prefix}/count/follow/${collectionId}`,
    method: 'GET',
  })
}
