import { Box, Paper } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useState } from 'react'
import { Column } from '../../../types/column'
import ColumnList from '../../../components/column/column-list'
import { selectColumnsByAuthorId } from '../../../api/column'
import { useMount } from '../../../utils/hook'
import { useAuth } from '../../../context/auth-context'

export default function ColumnsTab() {
  const { id } = useParams()
  const [columns, setColumns] = useState<Column[]>([])
  const { user } = useAuth()
  const currentUser = user
  const [homepage, setHomepage] = useState<boolean>(false)

  const useColumns = (userId: number) => {
    return selectColumnsByAuthorId(userId)
  }

  useMount(async () => {
    const res = await useColumns(id as unknown as number)
    const columns: Column[] = res.data
    columns.sort((a, b) => (a.createTime > b.createTime ? 0 : 1))
    setColumns(columns)

    if (currentUser !== null) {
      if (columns.length > 0) {
        if (currentUser.id === res.data[0].authorId) {
          console.log('is homepage')
          setHomepage(true)
        }
      }
    } else {
      console.log('not login')
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
