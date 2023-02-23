import { Box } from '@mui/material'
import { Column } from '../../../types/column'
import ColumnCard from '../column-card'
import { User } from '../../../types/user'

interface ColumnListProps {
  columns: Column[]
  homepage: boolean
  currentUser: User | null
}

export default function ColumnList({
  columns,
  homepage,
  currentUser,
}: ColumnListProps) {
  return (
    <Box>
      {columns.map((column) => (
        <ColumnCard
          key={column.id}
          column={column}
          homepage={homepage}
          currentUser={currentUser}
        />
      ))}
    </Box>
  )
}
