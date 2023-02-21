import client from '../utils/axios-client'

const prefix: string = '/post'

export function selectAllPosts() {
  return client({
    url: `${prefix}`,
    method: 'GET',
  })
}

export function selectPostsByTagId(tagId: number) {
  return client({
    url: `${prefix}/tag/${tagId}`,
    method: 'GET',
  })
}

export function selectPostsByAuthorId(authorId: number) {
  return client({
    url: `${prefix}/author/${authorId}`,
    method: 'GET',
  })
}

export function selectPostById(id: number) {
  return client({
    url: `${prefix}/${id}`,
    method: 'GET',
  })
}

interface SelectPostLikeProp {
  postId: number
  userId: number
}

export function selectPostLikeById(param: SelectPostLikeProp) {
  return client({
    url: `${prefix}/like/single`,
    method: 'GET',
    params: {
      ...param,
    },
  })
}

interface LikeActionToPostProp {
  postId: number
  userId: number
  type: number
}

export function likeActionToPost(param: LikeActionToPostProp) {
  return client({
    url: `${prefix}/like`,
    method: 'PUT',
    data: param,
  })
}