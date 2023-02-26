export interface Column {
  id: number
  name: string
  cover: string
  description: string
  createTime: Date
  updateTime: Date
  authorId: number
}

export const defaultColumn: Column = {
  id: 0,
  name: '',
  cover: '',
  description: '',
  createTime: new Date(),
  updateTime: new Date(),
  authorId: 0,
}
