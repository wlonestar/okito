import { Box } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useMount } from '../../utils/hook'
import { useState } from 'react'
import { Column, columnDefault } from '../../types/column'
import { selectColumnById } from '../../api/column'

export default function ColumnPage() {
  const { id } = useParams()
  const [column, setColumn] = useState<Column>(columnDefault)

  useMount(() => {
    selectColumnById(id as unknown as number).then((res) => {
      setColumn(res.data)
    })
  })

  return (
    <Box sx={{ margin: '0 auto', textAlign: 'center', pt: 5, pb: 5 }}>
      {column.name}
    </Box>
  )
}
