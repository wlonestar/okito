import client from '../utils/axios-client'

export function selectUserById(id: number) {
  return client({
    url: `/user/${id}`,
    method: 'GET',
  })
}

interface ColumnType {
  userId: number
  columnId: number
}

export function selectColumnTypeByUserIdAndColumnId(param: {
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
