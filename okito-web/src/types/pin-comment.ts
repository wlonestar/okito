export interface PinComment {
  id: number
  content: string
  uploadTime: Date
  authorId: number
  pinId: number
  parentId: number | null
  likeNum: number
}

export const pinCommentDefault: PinComment = {
  id: 0,
  content: '',
  uploadTime: new Date(),
  authorId: 0,
  pinId: 0,
  parentId: null,
  likeNum: 0,
}

export interface PinCommentParam {
  id: number
  content?: string
  uploadTime: Date
  authorId: number
  pinId: number
  parentId: number | null
}
