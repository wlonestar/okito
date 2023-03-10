import moment from 'moment'

export function formatDateTime(date?: Date) {
  return moment(date).format('yyyy-MM-DD HH:mm')
}

export function formatDate(date?: Date) {
  return moment(date).format('yyyy-MM-DD')
}
