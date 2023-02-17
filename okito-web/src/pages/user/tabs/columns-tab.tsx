import { Box } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useAuth } from '../../../context/auth-context'
import { useState } from 'react'
import { Column } from '../../../types/column'
import { ColumnList } from '../../../components/column-list'
import { selectColumnsByUserIdAndType } from '../../../api/column'
import { useMount } from '../../../utils/hook'

export const ColumnsTab = () => {
  const { id } = useParams()
  const { user } = useAuth()
  const currentUser = user
  const [columns, setColumns] = useState<Column[]>([])

  const useColumns = (userId: number) => {
    return selectColumnsByUserIdAndType(userId, 1)
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
      <ColumnList columns={columns} currentUser={currentUser} />
    </Box>
  )
}
