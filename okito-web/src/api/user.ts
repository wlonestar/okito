import client from '../utils/axios-client'

export function selectUserById(id: number) {
  return client({
    url: `/user/${id}`,
    method: 'GET',
  })
}

export function selectUserColumnFollowByUserIdAndColumnId(param: {
  userId: number | undefined
  columnId: number
}) {
  return client({
    url: '/user/column/single',
    method: 'GET',
    params: {
      ...param,
    },
  })
}

export function updateFollowColumn(param: {
  userId: number | undefined
  columnId: number
  follow: boolean
}) {
  return client({
    url: `/user/column`,
    method: 'PUT',
    data: {
      ...param,
    },
  })
}

export function selectUserCollectionFollowByUserIdAndCollectionId(param: {
  userId: number | undefined
  collectionId: number
}) {
  return client({
    url: '/user/collection/single',
    method: 'GET',
    params: {
      ...param,
    },
  })
}

export function updateFollowCollection(param: {
  userId: number | undefined
  collectionId: number
  follow: boolean
}) {
  return client({
    url: `/user/collection`,
    method: 'PUT',
    data: {
      ...param,
    },
  })
}
