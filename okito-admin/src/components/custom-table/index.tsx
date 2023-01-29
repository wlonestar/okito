import React from 'react'
import {
  DataGrid,
  GridCallbackDetails,
  GridColumns,
  GridRowModel,
  GridRowModesModel,
  GridSlotsComponentsProps,
  GridValidRowModel,
} from '@mui/x-data-grid'
import { EditToolbar } from './edit-toolbar'
import { handleRowEditStart, handleRowEditStop } from './cell-actions'

interface CustomTableProps {
  rows: GridValidRowModel[]
  columns: GridColumns<GridValidRowModel>
  rowModesModel: GridRowModesModel
  pageSize: number
  onPageSizeChange: (pageSize: number, details: GridCallbackDetails) => void
  onRowModesModelChange: (
    rowModesModel: GridRowModesModel,
    details: GridCallbackDetails
  ) => void
  processRowUpdate: (
    newRow: GridRowModel,
    oldRow: GridRowModel
  ) => Promise<GridRowModel> | GridRowModel
  componentsProps: GridSlotsComponentsProps
}

export const CustomTable = ({
  rows,
  columns,
  rowModesModel,
  pageSize,
  onPageSizeChange,
  onRowModesModelChange,
  processRowUpdate,
  componentsProps,
}: CustomTableProps) => {
  return (
    <DataGrid
      rows={rows}
      columns={columns}
      editMode="row"
      rowModesModel={rowModesModel}
      pageSize={pageSize}
      onPageSizeChange={onPageSizeChange}
      rowsPerPageOptions={[10, 25, 50, 100]}
      sx={{
        boxSizing: 'border-box',
      }}
      onRowModesModelChange={onRowModesModelChange}
      onRowEditStart={handleRowEditStart}
      onRowEditStop={handleRowEditStop}
      processRowUpdate={processRowUpdate}
      components={{
        Toolbar: EditToolbar,
      }}
      componentsProps={componentsProps}
      experimentalFeatures={{ newEditingApi: true }}
    />
  )
}
