import React, { SetStateAction, useState } from 'react'
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
import { useMount } from '../../utils/hook'
import { CustomAlert } from '../../components/custom-alert'
import { CustomTable } from '../../components/custom-table'
import { Tag } from '../../types/tag'
import { selectAllTags, addTag, updateTag, deleteTagById } from '../../api/tag'

export const TagPage = () => {
  // data
  const [rows, setRows] = useState<Tag[]>([])
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
  function useAllTags() {
    selectAllTags().then((res) => {
      if (res.status === 20) {
        setRows(res.data)
        console.log(rows)
      } else {
        console.error(res)
      }
    })
  }

  useMount(() => {
    useAllTags()
  })

  function setAlertMessage(alertContent: string, alertType: AlertColor) {
    setAlertContent(alertContent)
    setAlertType(alertType)
  }

  // edit mode
  const handleEditClick = (id: GridRowId) => () => {
    setRowModesModel({ ...rowModesModel, [id]: { mode: GridRowModes.Edit } })
  }

  // modify tag
  const handleSaveClick = (id: GridRowId) => () => {
    setRowModesModel({ ...rowModesModel, [id]: { mode: GridRowModes.View } })
  }

  // delete a tag
  const handleDeleteClick = (id: GridRowId) => () => {
    setRows(rows.filter((row: Tag) => row.id !== id))
    const tagId = rows.find((row) => row.id === id)?.id
    deleteTagById(tagId).then((res) => {
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

  // modify tag
  const processRowUpdate = (newRow: GridRowModel) => {
    const updatedRow = { ...newRow, isNew: false }
    setRows(rows.map((row) => (row.id === newRow.id ? updatedRow : row)))
    if (newRow.id !== 0) {
      // update tag
      updateTag(updatedRow).then((res) => {
        console.log(res)
        if (res.status === 20) {
          setAlertMessage('update success', 'success')
        } else {
          setAlertMessage('update error', 'error')
        }
        setAlertOpen(true)
      })
    } else {
      // add tag
      addTag(newRow).then((res) => {
        console.log(res)
        useAllTags()
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
