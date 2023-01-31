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
