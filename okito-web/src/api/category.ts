import client from '../utils/axios-client'

export function selectCategoryById(id: number) {
  return client({
    url: `/category/${id}`,
    method: 'GET',
  })
}
