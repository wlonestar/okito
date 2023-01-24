import client from '../utils/axios-client'
import { PageParam } from '../types/page-param'
import { Category } from '../types/category'

export async function selectAllCategories() {
  return client({
    url: '/category',
    method: 'GET',
  })
}

// TODO
export async function selectAllCategoriesByPage(param: PageParam) {
  return client({
    url: '/category/page',
    method: 'GET',
    params: {
      ...param,
    },
  })
}

export async function selectCategoryById(id: number) {
  return client({
    url: `/category/${id}`,
    method: 'GET',
  })
}

export async function addCategory(category: Category) {
  return client({
    url: '/category',
    method: 'POST',
    data: category,
  })
}

export async function updateCategory(category: Category) {
  return client({
    url: '/category',
    method: 'PUT',
    data: category,
  })
}

export async function deleteCategoryById(id: number) {
  return client({
    url: `/category/${id}`,
    method: 'DELETE',
  })
}
