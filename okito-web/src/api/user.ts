import client from '../utils/axios-client'

export function selectUserById(id: number) {
  return client({
    url: `/user/${id}`,
    method: 'GET',
  })
}
