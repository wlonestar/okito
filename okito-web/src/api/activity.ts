import client from '../utils/axios-client'
import { Activity } from '../types/activity'

export function selectActivitiesByUserId(userId: number) {
  return client({
    url: `/activity/user/${userId}`,
    method: 'GET',
  })
}

export function addActivity(param: Activity) {
  return client({
    url: '/activity',
    method: 'POST',
    data: param,
  })
}
