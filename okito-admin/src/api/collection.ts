import client from '../utils/axios-client'
import { PageParam } from '../types/page-param'
import { Collection } from '../types/collection'

export async function selectAllCollections() {
  return client({
    url: '/collection',
    method: 'GET',
  })
}

export async function selectAllCollectionsByPage(param: PageParam) {
  return client({
    url: '/collection/page',
    method: 'GET',
    params: {
      ...param,
    },
  })
}

export async function selectCollectionById(id: number) {
  return client({
    url: `/collection/${id}`,
    method: 'GET',
  })
}

export async function addCollection(collection: Collection) {
  return client({
    url: '/collection',
    method: 'POST',
    data: collection,
  })
}

export async function updateCollection(collection: Collection) {
  return client({
    url: '/collection',
    method: 'PUT',
    data: collection,
  })
}

export async function deleteCollectionById(id: number) {
  return client({
    url: `/collection/${id}`,
    method: 'DELETE',
  })
}
