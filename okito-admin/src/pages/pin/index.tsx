import React, { SetStateAction, useState } from 'react'
import { Pin } from '../../types/pin'
import {
  GridActionsCellItem,
  GridColumns,
  GridRowId,
  GridRowModel,
  GridRowModes,
  GridRowModesModel,
} from '@mui/x-data-grid'
import { AlertColor, Grid } from '@mui/material'
import { renderCellExpand } from '../../components/custom-table/grid-cell-expand'
import SaveIcon from '@mui/icons-material/Save'
import CancelIcon from '@mui/icons-material/Cancel'
import EditIcon from '@mui/icons-material/Edit'
import DeleteIcon from '@mui/icons-material/Delete'
import { addPin, deletePinById, selectAllPins, updatePin } from '../../api/pin'
import { useMount } from '../../utils/hook'
import { CustomAlert } from '../../components/custom-alert'
import { CustomTable } from '../../components/custom-table'

export const PinPage = () => {
  // data
  const [rows, setRows] = useState<Pin[]>([])
  const [rowModesModel, setRowModesModel] = useState<GridRowModesModel>({})
  const [pageSize, setPageSize] = useState<number>(10)
  const [alertOpen, setAlertOpen] = useState(false)
  const [alertContent, setAlertContent] = useState<string>('')
  const [alertType, setAlertType] = useState<AlertColor>('error')
  const columns: GridColumns = [
    { field: 'id', headerName: 'ID', editable: false, width: 70 },
    {
      field: 'content',
      headerName: 'Content',
      editable: true,
      width: 130,
      renderCell: renderCellExpand,
    },
    {
      field: 'createTime',
      type: 'dateTime',
      headerName: 'Create Time',
      editable: true,
      width: 220,
    },
    {
      field: 'updateTime',
      type: 'dateTime',
      headerName: 'Update Time',
      editable: true,
      width: 220,
    },
    {
      field: 'authorId',
      headerName: 'Author Id',
      type: 'number',
      editable: true,
      width: 70,
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
  function useAllPins() {
    selectAllPins().then((res) => {
      if (res.status === 20) {
        setRows(res.data)
        console.log(rows)
      } else {
        console.error(res)
      }
    })
  }

  useMount(() => {
    useAllPins()
  })

  function setAlertMessage(alertContent: string, alertType: AlertColor) {
    setAlertContent(alertContent)
    setAlertType(alertType)
  }

  // edit mode
  const handleEditClick = (id: GridRowId) => () => {
    setRowModesModel({ ...rowModesModel, [id]: { mode: GridRowModes.Edit } })
  }

  // modify pin
  const handleSaveClick = (id: GridRowId) => () => {
    setRowModesModel({ ...rowModesModel, [id]: { mode: GridRowModes.View } })
  }

  // delete a pin
  const handleDeleteClick = (id: GridRowId) => () => {
    setRows(rows.filter((row: Pin) => row.id !== id))
    const pinId = rows.find((row) => row.id === id)?.id
    deletePinById(pinId).then((res) => {
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

  // modify pin
  const processRowUpdate = (newRow: GridRowModel) => {
    const updatedRow = { ...newRow, isNew: false }
    setRows(rows.map((row) => (row.id === newRow.id ? updatedRow : row)))
    if (newRow.id !== 0) {
      // update pin
      updatePin(updatedRow).then((res) => {
        console.log(res)
        if (res.status === 20) {
          setAlertMessage('update success', 'success')
        } else {
          setAlertMessage('update error', 'error')
        }
        setAlertOpen(true)
      })
    } else {
      // add pin
      addPin(newRow).then((res) => {
        console.log(res)
        useAllPins()
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
