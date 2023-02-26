export interface PinComment {
  id: number
  content: string
  uploadTime: Date
  authorId: number
  pinId: number
  parentId: number | null
  likeNum: number
}

export interface PinCommentParam {
  id: number
  content?: string
  uploadTime: Date
  authorId: number
  pinId: number
  parentId: number | null
}
