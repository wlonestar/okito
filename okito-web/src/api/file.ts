import client from '../utils/axios-client'

export function uploadImage(file: FormData) {
  return client({
    url: '/file/upload',
    method: 'POST',
    headers: {
      'Content-Type': 'multipart/form-data',
    },
    data: file,
  })
}

export function listAll() {
  return client({
    url: '/file',
    method: 'GET',
  })
}
