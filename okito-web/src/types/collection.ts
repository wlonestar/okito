export interface Collection {
  id: number
  name?: string
  type: boolean
  description?: string
  createTime: Date
  updateTime: Date
  authorId: number
}

export const defaultCollection: Collection = {
  id: 0,
  name: '',
  type: false,
  description: '',
  createTime: new Date(),
  updateTime: new Date(),
  authorId: 0,
}
