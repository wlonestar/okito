import { Box } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useMount } from '../../utils/hook'
import { useState } from 'react'
import { Column, columnDefault } from '../../types/column'
import { selectColumnById } from '../../api/column'

export const ColumnPage = () => {
  const { id } = useParams()
  const [column, setColumn] = useState<Column>(columnDefault)

  useMount(() => {
    selectColumnById(id as unknown as number).then((res) => {
      setColumn(column)
    })
  })

  return <Box>{column.name}</Box>
}
