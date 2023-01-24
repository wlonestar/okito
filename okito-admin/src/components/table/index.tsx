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
      pageSize={5}
      rowsPerPageOptions={[5]}
      checkboxSelection
    />
  )
}
