export interface Pin {
  id?: number
  content: string
  createTime: Date
  updateTime: Date
  authorId: number
  likeNum?: number
}

export interface PinLike {
  pinId: number
  userId: number
  type: number
}
