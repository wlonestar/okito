import { Button } from '@mui/material'
import {
  GridRowModes,
  GridRowModesModel,
  GridRowsProp,
  GridToolbarContainer,
} from '@mui/x-data-grid'
import AddIcon from '@mui/icons-material/Add'

interface EditToolbarProps {
  setRows: (newRows: (oldRows: GridRowsProp) => GridRowsProp) => void
  setRowModesModel: (
    newModel: (oldModel: GridRowModesModel) => GridRowModesModel
  ) => void
}

export const EditToolbar = (props: EditToolbarProps) => {
  const { setRows, setRowModesModel } = props
  // TODO: not all table have field `id`
  const handleClick = () => {
    // set new row id = 0
    const id: number = 0
    setRows((oldRows) => [...oldRows, { id, isNew: true }])
    setRowModesModel((oldModel) => ({
      ...oldModel,
      [id]: { mode: GridRowModes.Edit },
    }))
  }

  return (
    <GridToolbarContainer>
      <Button color="primary" startIcon={<AddIcon />} onClick={handleClick}>
        Add record
      </Button>
    </GridToolbarContainer>
  )
}
