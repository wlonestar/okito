export interface Tag {
  id: number
  name: string
  cover: string
  description: string
  followNum: number
  postNum: number
}

export const defaultTag: Tag = {
  id: 0,
  name: '',
  cover: '',
  description: '',
  followNum: 0,
  postNum: 0,
}
