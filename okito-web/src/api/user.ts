import client from '../utils/axios-client'

export function selectUserById(id: number) {
  return client({
    url: `/user/${id}`,
    method: 'GET',
  })
}

export function selectUserColumnFollowByUserIdAndColumnId(param: {
  columnId: number
  userId: number | undefined
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
  columnId: number
  userId: number | undefined
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
