import { Box } from '@mui/material'
import { Column } from '../../types/column'
import { ColumnCard } from './column-card'
import { useAuth } from '../../context/auth-context'
import { useMount } from '../../utils/hook'
import { useState } from 'react'

interface ColumnListProps {
  columns: Column[]
}

export const ColumnList = ({ columns }: ColumnListProps) => {
  const { user } = useAuth()
  const currentUser = user
  const [homepage, setHomepage] = useState<boolean>(false)

  useMount(() => {
    if (currentUser !== null) {
      if (columns.length > 0) {
        if (currentUser.id === columns[0].authorId) {
          console.log('is homepage')
          setHomepage(true)
        }
      }
    } else {
      console.log('not login')
    }
  })

  return (
    <Box>
      {columns.map((column) => (
        <ColumnCard
          key={column.id}
          column={column}
          currentUser={currentUser}
          homepage={homepage}
        />
      ))}
    </Box>
  )
}
