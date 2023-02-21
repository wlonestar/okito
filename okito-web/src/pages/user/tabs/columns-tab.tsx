import { Box } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useState } from 'react'
import { Column } from '../../../types/column'
import ColumnList from '../../../components/column-list'
import { selectColumnsByAuthorId } from '../../../api/column'
import { useMount } from '../../../utils/hook'

export function ColumnsTab() {
  const { id } = useParams()
  const [columns, setColumns] = useState<Column[]>([])

  const useColumns = (userId: number) => {
    return selectColumnsByAuthorId(userId)
  }

  useMount(() => {
    useColumns(id as unknown as number).then((res) => {
      const columns: Column[] = res.data
      columns.sort((a, b) => (a.createTime > b.createTime ? 0 : 1))
      setColumns(columns)
    })
  })

  return (
    <Box>
      <ColumnList columns={columns} />
    </Box>
  )
}
