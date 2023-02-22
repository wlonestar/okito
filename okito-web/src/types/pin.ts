export interface Pin {
  id: number
  content: string
  createTime: Date
  updateTime: Date
  authorId: number
  viewNum: number
  likeNum: number
}

export const pinDefault: Pin = {
  id: 0,
  content: '',
  createTime: new Date(),
  updateTime: new Date(),
  authorId: 0,
  viewNum: 0,
  likeNum: 0,
}

export interface PinParam {
  id: number
  content?: string
  createTime: Date
  updateTime: Date
  authorId: number
}

export const pinParamDefault: PinParam = {
  id: 0,
  content: '',
  createTime: new Date(),
  updateTime: new Date(),
  authorId: 0,
}
