export interface Post {
  id: number
  title: string
  summary: string
  cover: string
  content: string
  createTime: Date
  updateTime: Date
  draft: boolean
  cateId: number
  authorId: number
  likeNum: number
}

export const postDefault = {
  id: 0,
  title: '',
  summary: '',
  cover: '',
  content: '',
  createTime: new Date(),
  updateTime: new Date(),
  draft: false,
  cateId: 0,
  authorId: 0,
  likeNum: 0,
}
