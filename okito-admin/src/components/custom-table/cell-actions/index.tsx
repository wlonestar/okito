import React, { SyntheticEvent } from 'react'
import { GridEventListener, GridRowParams, MuiEvent } from '@mui/x-data-grid'

export const handleRowEditStart = (
  params: GridRowParams,
  event: MuiEvent<SyntheticEvent>
) => {
  event.defaultMuiPrevented = true
}

export const handleRowEditStop: GridEventListener<'rowEditStop'> = (
  params,
  event
) => {
  event.defaultMuiPrevented = true
}
