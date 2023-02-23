export interface Activity {
  id: number
  userId: number
  actionType: number
  actionSubType: number
  targetId: number
  execTime: Date
}

export const activityDefault: Activity = {
  id: 0,
  userId: 0,
  actionType: 0,
  actionSubType: 0,
  targetId: 0,
  execTime: new Date(),
}
