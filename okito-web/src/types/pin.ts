export interface Pin {
  id: number
  content: string
  createTime: Date
  updateTime: Date
  authorId: number
  viewNum: number
  likeNum?: number | 0
}

export interface PinParam {
  id: number
  content?: string
  createTime: Date
  updateTime: Date
  authorId: number
}
