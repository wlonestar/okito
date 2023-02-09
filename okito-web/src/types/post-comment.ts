export interface PostComment {
  id: number
  content: string
  uploadTime: Date
  authorId: number
  postId: number
  parentId?: number
  likeNum: number
}

export const postCommentDefault: PostComment = {
  id: 0,
  content: '',
  uploadTime: new Date(),
  authorId: 0,
  postId: 0,
  parentId: 0,
  likeNum: 0,
}

export interface PostCommentParam {
  id: number
  content?: string
  uploadTime: Date
  authorId: number
  postId: number
  parentId: number | null
}
