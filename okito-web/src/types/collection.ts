export interface Collection {
  id: number
  name: string
  cover: string
  description: string
  createTime: Date
  updateTime: Date
  authorId: number
}

export const collectionDefault: Collection = {
  id: 0,
  name: '',
  cover: '',
  description: '',
  createTime: new Date(),
  updateTime: new Date(),
  authorId: 0,
}
