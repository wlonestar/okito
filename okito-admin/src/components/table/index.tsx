import React from 'react'
import { DataGrid, GridColDef } from '@mui/x-data-grid'

interface TableProps {
  columns: GridColDef[]
  rows: any[]
}

export const CustomTable = ({ columns, rows }: TableProps) => {
  return (
    <DataGrid
      columns={columns}
      rows={rows}
      pageSize={15}
      rowsPerPageOptions={[5, 10, 15]}
      checkboxSelection
    />
  )
}
