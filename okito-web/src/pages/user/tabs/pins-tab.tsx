import { Box } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useAuth } from '../../../context/auth-context'
import { useState } from 'react'
import { Pin } from '../../../types/pin'
import { useMount, useSort } from '../../../utils/hook'
import { selectPinsByAuthorId } from '../../../api/pin'
import PinList from '../../../components/pin/pin-list'

export default function PinsTab() {
  const { id } = useParams()
  const { user } = useAuth()
  const currentUser = user
  const [pins, setPins] = useState<Pin[]>([])

  useMount(() => {
    selectPinsByAuthorId(id as unknown as number).then((res) => {
      if (res.status === 20) {
        const data: Pin[] = useSort(res.data, 'uploadTime', 'desc')
        setPins(data)
      }
    })
  })

  return (
    <Box>
      <PinList pins={pins} currentUser={currentUser} />
    </Box>
  )
}
