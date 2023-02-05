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
  viewNum: number
  likeNum: number
}

export const postDefault: Post = {
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
  viewNum: 0,
  likeNum: 0,
}
