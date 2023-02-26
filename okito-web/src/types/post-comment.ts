export interface PostComment {
  id: number
  content: string
  uploadTime: Date
  authorId: number
  postId: number
  parentId?: number
  likeNum: number
}

export interface PostCommentParam {
  id: number
  content?: string
  uploadTime: Date
  authorId: number
  postId: number
  parentId: number | null
}
