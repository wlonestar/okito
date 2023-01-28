import React from 'react'
import { Alert, AlertColor, Collapse, IconButton } from '@mui/material'
import CloseIcon from '@mui/icons-material/Close'
import { AlertMessage } from '../consts'

interface CustomAlertProps {
  open: boolean
  alert: AlertMessage
  alertType: AlertColor
  onClose: () => void
}

export const CustomAlert = ({
  open,
  alert,
  alertType,
  onClose,
}: CustomAlertProps) => {
  return (
    <Collapse in={open}>
      <Alert
        action={
          <IconButton
            aria-label="close"
            color="inherit"
            size="small"
            onClick={() => {
              onClose()
            }}
          >
            <CloseIcon fontSize="inherit" />
          </IconButton>
        }
        severity={alertType}
        sx={{ mb: 2 }}
      >
        {alert}
      </Alert>
    </Collapse>
  )
}
