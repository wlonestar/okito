import { Box } from '@mui/material'
import { Column } from '../../types/column'
import { User } from '../../types/user'
import { ColumnCard } from './column-card'

interface ColumnListProps {
  columns: Column[]
  currentUser: User | null
}

export const ColumnList = ({ columns, currentUser }: ColumnListProps) => {
  return (
    <Box>
      {columns.map((column) => (
        <ColumnCard key={column.id} column={column} currentUser={currentUser} />
      ))}
    </Box>
  )
}
