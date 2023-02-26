export interface Category {
  id: number
  name: string
  cover: string
  description: string
}

export const defaultCategory: Category = {
  id: 0,
  name: '',
  cover: '',
  description: '',
}
