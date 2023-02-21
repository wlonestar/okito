export interface Pin {
  id: number
  content: string
  createTime: Date
  updateTime: Date
  authorId: number
  likeNum: number
}

export const pinDefault: Pin = {
  id: 0,
  content: '',
  createTime: new Date(),
  updateTime: new Date(),
  authorId: 0,
  likeNum: 0,
}
