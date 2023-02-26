import { Box } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useState } from 'react'
import { Pin } from '../../../types/pin'
import { useMount, useSort } from '../../../utils'
import { selectPinsByAuthorId } from '../../../api/pin'
import PinList from '../../../components/pin/pin-list'
import { User } from '../../../types/user'

interface PinsTabProps {
  currentUser: User | null
}

export default function PinsTab({ currentUser }: PinsTabProps) {
  const { id } = useParams()
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
