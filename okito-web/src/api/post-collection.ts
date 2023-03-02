import { PostCollection, PostCollectionId } from '../types/post-collection'
import client from '../utils/axios-client'

export function selectPostCollectionById(param: PostCollectionId) {
  return client({
    url: '/post/collection/single',
    method: 'GET',
    params: {
      ...param,
    },
  })
}

export function updatePostCollection(param: PostCollection) {
  return client({
    url: '/post/collection',
    method: 'PUT',
    data: param,
  })
}
