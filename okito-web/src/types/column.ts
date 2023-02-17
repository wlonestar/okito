export interface Column {
  id: number
  name: string
  cover: string
  description: string
  createTime: Date
  updateTime: Date
}

export const columnDefault: Column = {
  id: 0,
  name: '',
  cover: '',
  description: '',
  createTime: new Date(),
  updateTime: new Date(),
}
