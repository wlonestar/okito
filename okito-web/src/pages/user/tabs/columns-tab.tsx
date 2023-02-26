import { Box, Paper } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useState } from 'react'
import { Column } from '../../../types/column'
import ColumnList from '../../../components/column/column-list'
import { selectColumnsByAuthorId } from '../../../api/column'
import { useMount, useSort } from '../../../utils'
import { User } from '../../../types/user'

interface ColumnsTabProps {
  currentUser: User | null
}

export default function ColumnsTab({ currentUser }: ColumnsTabProps) {
  const { id } = useParams()
  const [homepage, setHomepage] = useState<boolean>(false)
  const [columns, setColumns] = useState<Column[]>([])

  useMount(async () => {
    const columnsData = await selectColumnsByAuthorId(id as unknown as number)
    const columns: Column[] = useSort(columnsData.data, 'createTime', 'desc')
    setColumns(columns)
    if (currentUser !== null && columnsData.data.length > 0) {
      if (currentUser.id === columnsData.data[0].authorId) {
        setHomepage(true)
      }
    }
  })

  return (
    <Paper>
      <Box>
        <ColumnList
          columns={columns}
          homepage={homepage}
          currentUser={currentUser}
        />
      </Box>
    </Paper>
  )
}
