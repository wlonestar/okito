export interface User {
  id: number
  username: string
  password: string
  email: string
  avatar: string
  bio?: string
  homepage?: string
  intro?: string
  joinTime: Date
  followerNum: number
  followedNum: number
  postLikeNum: number
}
