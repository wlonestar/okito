import React, { SetStateAction, useState } from 'react'
import {
  addCategory,
  deleteCategoryById,
  selectAllCategories,
  updateCategory,
} from '../../api/category'
import { Category } from '../../types/category'
import { Grid, AlertColor } from '@mui/material'
import {
  GridActionsCellItem,
  GridColumns,
  GridRowId,
  GridRowModel,
  GridRowModes,
  GridRowModesModel,
} from '@mui/x-data-grid'
import SaveIcon from '@mui/icons-material/Save'
import CancelIcon from '@mui/icons-material/Cancel'
import EditIcon from '@mui/icons-material/Edit'
import DeleteIcon from '@mui/icons-material/Delete'
import { useMount } from '../../utils/hook'
import { CustomAlert } from '../../components/custom-alert'
import { renderCellExpand } from '../../components/custom-table/grid-cell-expand'
import { CustomTable } from '../../components/custom-table'

export const CategoryPage = () => {
  // data
  const [rows, setRows] = useState<Category[]>([])
  const [rowModesModel, setRowModesModel] = useState<GridRowModesModel>({})
  const [pageSize, setPageSize] = useState<number>(10)
  const [alertOpen, setAlertOpen] = useState(false)
  const [alertContent, setAlertContent] = useState<string>('')
  const [alertType, setAlertType] = useState<AlertColor>('error')
  const columns: GridColumns = [
    { field: 'id', headerName: 'ID', editable: false, width: 70 },
    { field: 'name', headerName: 'Name', editable: true, width: 130 },
    { field: 'cover', headerName: 'Cover', editable: true, width: 130 },
    {
      field: 'description',
      headerName: 'Description',
      type: 'string',
      editable: true,
      width: 300,
      renderCell: renderCellExpand,
    },
    {
      field: 'actions',
      type: 'actions',
      headerName: 'Actions',
      width: 100,
      cellClassName: 'actions',
      getActions: ({ id }) => {
        const isInEditMode = rowModesModel[id]?.mode === GridRowModes.Edit
        if (isInEditMode) {
          return [
            <GridActionsCellItem
              icon={<SaveIcon />}
              label="Save"
              onClick={handleSaveClick(id)}
            />,
            <GridActionsCellItem
              icon={<CancelIcon />}
              label="Cancel"
              className="textPrimary"
              onClick={handleCancelClick(id)}
              color="inherit"
            />,
          ]
        }
        return [
          <GridActionsCellItem
            icon={<EditIcon />}
            label="Edit"
            className="textPrimary"
            onClick={handleEditClick(id)}
            color="inherit"
          />,
          <GridActionsCellItem
            icon={<DeleteIcon />}
            label="Delete"
            onClick={handleDeleteClick(id)}
            color="inherit"
          />,
        ]
      },
    },
  ]

  // method
  function useAllCategories() {
    selectAllCategories().then((res) => {
      if (res.status === 20) {
        setRows(res.data)
        console.log(rows)
      } else {
        console.error(res)
      }
    })
  }

  useMount(() => {
    useAllCategories()
  })

  function setAlertMessage(alertContent: string, alertType: AlertColor) {
    setAlertContent(alertContent)
    setAlertType(alertType)
  }

  // edit mode
  const handleEditClick = (id: GridRowId) => () => {
    setRowModesModel({ ...rowModesModel, [id]: { mode: GridRowModes.Edit } })
  }

  // modify category
  const handleSaveClick = (id: GridRowId) => () => {
    setRowModesModel({ ...rowModesModel, [id]: { mode: GridRowModes.View } })
  }

  // delete a category
  const handleDeleteClick = (id: GridRowId) => () => {
    setRows(rows.filter((row: Category) => row.id !== id))
    const categoryId = rows.find((row) => row.id === id)?.id
    deleteCategoryById(categoryId).then((res) => {
      console.log(res)
      if (res.status === 20) {
        setAlertMessage('delete success', 'success')
      } else {
        setAlertMessage('delete error', 'error')
      }
      setAlertOpen(true)
    })
  }

  const handleCancelClick = (id: GridRowId) => () => {
    console.log('cancel')
    setRowModesModel({
      ...rowModesModel,
      [id]: { mode: GridRowModes.View, ignoreModifications: true },
    })
    const editedRow = rows.find((row) => row.id === id)
    if (editedRow!.isNew) {
      setRows(rows.filter((row) => row.id !== id))
    }
  }

  // modify category
  const processRowUpdate = (newRow: GridRowModel) => {
    const updatedRow = { ...newRow, isNew: false }
    setRows(rows.map((row) => (row.id === newRow.id ? updatedRow : row)))
    if (newRow.id !== 0) {
      // update category
      updateCategory(updatedRow).then((res) => {
        console.log(res)
        if (res.status === 20) {
          setAlertMessage('update success', 'success')
        } else {
          setAlertMessage('update error', 'error')
        }
        setAlertOpen(true)
      })
    } else {
      // add category
      addCategory(newRow).then((res) => {
        console.log(res)
        useAllCategories()
        if (res.status === 20) {
          setAlertMessage('add success', 'success')
        } else {
          setAlertMessage('add error', 'error')
        }
        setAlertOpen(true)
      })
    }
    return updatedRow
  }

  return (
    <Grid container spacing={3}>
      <Grid item xs={12}>
        <CustomAlert
          open={alertOpen}
          alert={alertContent}
          alertType={alertType}
          onClose={() => {
            setAlertOpen(false)
            setAlertContent('')
          }}
        />
        <div style={{ height: 702, width: '100%' }}>
          <CustomTable
            rows={rows}
            columns={columns}
            rowModesModel={rowModesModel}
            pageSize={pageSize}
            onPageSizeChange={(newPageSize) => setPageSize(newPageSize)}
            onRowModesModelChange={(
              newModel: SetStateAction<GridRowModesModel>
            ) => setRowModesModel(newModel)}
            processRowUpdate={processRowUpdate}
            componentsProps={{
              toolbar: { setRows, setRowModesModel },
            }}
          />
        </div>
      </Grid>
    </Grid>
  )
}
