import { Post } from '../types/post'

export const sortPostByHot = (posts: Post[]) => {
  posts.sort((a, b) => (a.viewNum > b.viewNum ? 0 : 1))
}

export const sortPostByNew = (posts: Post[]) => {
  posts.sort((a, b) => (a.createTime > b.createTime ? 0 : 1))
}
