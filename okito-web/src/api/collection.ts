import client from '../utils/axios-client'

export function selectCollectionsByAuthorId(authorId: number) {
  return client({
    url: `/collection/author/${authorId}`,
    method: 'GET',
  })
}

export function selectCollectionsByFollowerId(followerId: number) {
  return client({
    url: `/collection/follower/${followerId}`,
    method: 'GET',
  })
}

export function countCollectionsByAuthorId(authorId: number) {
  return client({
    url: `/collection/count/posts/${authorId}`,
    method: 'GET',
  })
}

export function countPostsByCollectionId(collectionId: number) {
  return client({
    url: `/collection/count/collection/${collectionId}`,
    method: 'GET',
  })
}

export function countFollowByCollectionId(collectionId: number) {
  return client({
    url: `/collection/count/follow/${collectionId}`,
    method: 'GET',
  })
}
