import client from '../utils/axios-client'
import { Tag } from '../types/tag'

export async function selectAllTags() {
  return client({
    url: '/tag',
    method: 'GET',
  })
}

export async function addTag(tag?: Tag) {
  return client({
    url: '/tag',
    method: 'POST',
    data: tag,
  })
}

export async function updateTag(tag?: Tag) {
  return client({
    url: '/tag',
    method: 'PUT',
    data: tag,
  })
}

export async function deleteTagById(id?: number) {
  return client({
    url: `/tag/${id}`,
    method: 'DELETE',
  })
}
