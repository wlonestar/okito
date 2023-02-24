import client from '../utils/axios-client'

const prefix: string = '/tag'

export function selectTagsByPostId(postId: number) {
  return client({
    url: `${prefix}/post/${postId}`,
    method: 'GET',
  })
}

export function selectTagsByFollowerId(followerId: number) {
  return client({
    url: `${prefix}/follower/${followerId}`,
    method: 'GET',
  })
}

export function selectTagById(id: number) {
  return client({
    url: `${prefix}/${id}`,
    method: 'GET',
  })
}

export function selectTagFollowByUserIdAndTagId(param: {
  userId: number | undefined
  tagId: number
}) {
  return client({
    url: '/tag/follow/single',
    method: 'GET',
    params: {
      ...param,
    },
  })
}

export function updateTagFollow(param: {
  userId: number | undefined
  tagId: number
  follow: boolean
}) {
  return client({
    url: '/tag/follow',
    method: 'PUT',
    data: {
      ...param,
    },
  })
}
