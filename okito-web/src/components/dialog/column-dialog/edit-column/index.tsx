import {
  Box,
  Dialog,
  DialogContent,
  TextField,
  Typography,
} from '@mui/material'
import { Column } from '../../../../types/column'
import { User } from '../../../../types/user'
import { CustomDialogTitle } from '../../collection-dialog'
import Button from '@mui/material/Button'
import React, { ChangeEvent, FormEvent, useRef, useState } from 'react'
import { listAll, uploadImage } from '../../../../api/file'
import axios from 'axios'
import { Image } from '@mui/icons-material'

interface EditColumnCard {
  column: Column
  handleClose: () => void
  currentUser: User | null
}

const EditColumnCard = ({
  column,
  handleClose,
  currentUser,
}: EditColumnCard) => {
  const nameRef = useRef('')
  const descriptionRef = useRef('')
  const [nameValid, setNameValid] = useState<boolean>(true)
  const [nameHelper, setNameHelper] = useState<string>('')
  const [file, setFile] = useState<File>()
  const [fileUrl, setFileUrl] = useState<string>(column.cover || '')

  const handleNameChange = () => {
    // @ts-ignore
    const value = nameRef.current.value
    if (value.trim() !== '') {
      setNameValid(true)
      setNameHelper('')
    } else {
      setNameValid(false)
      setNameHelper('名称不能为空')
    }
  }

  const handleFileChange = (e: ChangeEvent<HTMLInputElement>) => {
    if (e.target.files) {
      setFile(e.target.files[0])
    }
  }

  const fileUploadButton = () => {
    const data = new FormData()
    data.append('file', file || '')
    axios
      .post('http://localhost:8088/file/upload', data, {
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      })
      .then((r) => {
        const res = r.data
        if (res.status === 20) {
          console.log(res)
          setFileUrl(res.data)
        }
      })
  }

  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    if (currentUser !== null) {
      console.log('click')
      const data = new FormData(event.currentTarget)
      const param = {
        id: column.id,
        name: data.get('name')?.toString(),
        cover: column.cover,
        description: data.get('description')?.toString(),
        createTime: column.createTime,
        updateTime: new Date(),
        authorId: column.authorId,
      }
      console.log(param)
    }
  }

  return (
    <Box
      component="form"
      onSubmit={handleSubmit}
      noValidate
      sx={{ width: '500px' }}
    >
      <TextField
        size="small"
        required
        margin="normal"
        fullWidth
        id="name"
        name="name"
        label="专栏名称"
        autoFocus
        error={!nameValid}
        helperText={nameHelper}
        defaultValue={column.name}
        inputRef={nameRef}
        onChange={handleNameChange}
      />
      <TextField
        size="small"
        required
        margin="normal"
        fullWidth
        multiline
        rows={5}
        id="description"
        name="description"
        label="专栏名称"
        defaultValue={column.description}
        // @ts-ignore
        input={descriptionRef}
      />
      <Box>
        <input id="fileButton" type="file" onChange={handleFileChange} />
        <Button
          type="button"
          component="button"
          variant="contained"
          onClick={fileUploadButton}
        >
          Image Upload
        </Button>
      </Box>
      <img src={fileUrl} width="500px" height="100%" alt={column.name} />
      <Box sx={{ display: 'flex', p: 2, pl: 0, pr: 0 }}>
        <Button
          variant="contained"
          fullWidth
          sx={{ m: '0 auto', mr: 1 }}
          onClick={handleClose}
        >
          {'返回'}
        </Button>
        <Button
          variant="contained"
          fullWidth
          type="submit"
          sx={{ m: '0 auto', ml: 1 }}
          disabled={!nameValid}
        >
          {'确认'}
        </Button>
      </Box>
    </Box>
  )
}

interface EditColumnDialogProps {
  open: boolean
  column: Column
  handleClose: () => void
  currentUser: User | null
}

export const EditColumnDialog = ({
  open,
  column,
  handleClose,
  currentUser,
}: EditColumnDialogProps) => {
  return (
    <Box>
      <Dialog open={open} onClose={handleClose}>
        <CustomDialogTitle id="customized-dialog-title" onClose={handleClose}>
          <Typography variant="h6" fontWeight={500}>
            {'修改介绍'}
          </Typography>
        </CustomDialogTitle>
        <DialogContent>
          <EditColumnCard
            column={column}
            handleClose={handleClose}
            currentUser={currentUser}
          />
        </DialogContent>
      </Dialog>
    </Box>
  )
}
