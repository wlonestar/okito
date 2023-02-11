import client from '../utils/axios-client'

export function selectAllPosts() {
  return client({
    url: '/post',
    method: 'GET',
  })
}

export function selectPostsByTagId(tagId: number) {
  return client({
    url: `/post/tag/${tagId}`,
    method: 'GET',
  })
}

export function selectPostsByAuthorId(authorId: number) {
  return client({
    url: `/post/author/${authorId}`,
    method: 'GET',
  })
}

export function selectPostById(id: number) {
  return client({
    url: `/post/${id}`,
    method: 'GET',
  })
}

interface SelectPostLikeProp {
  postId: number
  userId: number
}

export function selectPostLikeById(param: SelectPostLikeProp) {
  return client({
    url: '/post/like/single',
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
    url: '/post/like',
    method: 'PUT',
    data: param,
  })
}
