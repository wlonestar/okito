import React, { useState } from 'react'
import {
  addCategory,
  deleteCategoryById,
  selectAllCategories,
  updateCategory,
} from '../../api/category'
import { Category } from '../../types/category'
import { Grid, AlertColor } from '@mui/material'
import {
  DataGrid,
  GridActionsCellItem,
  GridColumns,
  GridEventListener,
  GridRowId,
  GridRowModel,
  GridRowModes,
  GridRowModesModel,
  GridRowParams,
  MuiEvent,
} from '@mui/x-data-grid'
import SaveIcon from '@mui/icons-material/Save'
import CancelIcon from '@mui/icons-material/Cancel'
import EditIcon from '@mui/icons-material/Edit'
import DeleteIcon from '@mui/icons-material/Delete'
import { useMount } from '../../utils/hook'
import { CustomAlert } from '../../components/custom-alert'
import { AlertMessage } from '../../components/consts'
import { EditToolbar } from '../../components/custom-table/edit-toolbar'
import { renderCellExpand } from '../../components/custom-table/grid-cell-expand'

export const CategoryPage = () => {
  // data
  const [rows, setRows] = useState<Category[]>([])
  const [rowModesModel, setRowModesModel] = useState<GridRowModesModel>({})
  const [pageSize, setPageSize] = useState<number>(10)
  const [open, setOpen] = useState(false)
  const [alert, setAlert] = useState<AlertMessage>('default')
  const [alertType, setAlertType] = useState<AlertColor>('success')
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

  function setAlertMessage(alert: AlertMessage, alertType: AlertColor) {
    setAlert(alert)
    setAlertType(alertType)
  }

  const handleRowEditStart = (
    params: GridRowParams,
    event: MuiEvent<React.SyntheticEvent>
  ) => {
    event.defaultMuiPrevented = true
  }

  const handleRowEditStop: GridEventListener<'rowEditStop'> = (
    params,
    event
  ) => {
    event.defaultMuiPrevented = true
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
      setOpen(true)
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
        setOpen(true)
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
        setOpen(true)
      })
    }
    return updatedRow
  }

  return (
    <>
      <Grid container spacing={3}>
        <Grid item xs={12}>
          <CustomAlert
            open={open}
            alert={alert}
            alertType={alertType}
            onClose={() => {
              setOpen(false)
              setAlert('default')
            }}
          />
          <div style={{ height: 702, width: '100%' }}>
            <DataGrid
              rows={rows}
              columns={columns}
              editMode="row"
              rowModesModel={rowModesModel}
              pageSize={pageSize}
              onPageSizeChange={(newPageSize) => setPageSize(newPageSize)}
              rowsPerPageOptions={[10, 25, 50, 100]}
              sx={{
                boxSizing: 'border-box',
              }}
              onRowModesModelChange={(
                newModel: React.SetStateAction<GridRowModesModel>
              ) => setRowModesModel(newModel)}
              onRowEditStart={handleRowEditStart}
              onRowEditStop={handleRowEditStop}
              processRowUpdate={processRowUpdate}
              components={{
                Toolbar: EditToolbar,
              }}
              componentsProps={{
                toolbar: { setRows, setRowModesModel },
              }}
              experimentalFeatures={{ newEditingApi: true }}
            />
          </div>
        </Grid>
      </Grid>
    </>
  )
}
