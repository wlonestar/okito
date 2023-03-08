export interface User {
  id: number
  username: string
  password: string
  email: string
  token: string
  avatar: string
  bio?: string
  homepage?: string
  intro?: string
  joinTime: Date
  followerNum: number
  followedNum: number
  postViewNum: number
  postLikeNum: number
}

export const defaultUser: User = {
  id: 0,
  username: '',
  password: '',
  email: '',
  token: '',
  avatar: '',
  bio: '',
  homepage: '',
  intro: '',
  joinTime: new Date(),
  followerNum: 0,
  followedNum: 0,
  postViewNum: 0,
  postLikeNum: 0,
}

export interface UserParam {
  id: number
  username?: string
  email?: string
  avatar: string
  bio?: string
  homepage?: string
  intro?: string
}
