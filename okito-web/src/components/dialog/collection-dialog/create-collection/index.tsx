import { User } from '../../../../types/user'
import {
  Box,
  FormControlLabel,
  Radio,
  RadioGroup,
  TextField,
} from '@mui/material'
import Dialog from '@mui/material/Dialog'
import Typography from '@mui/material/Typography'
import DialogContent from '@mui/material/DialogContent'
import Button from '@mui/material/Button'
import React, { ChangeEvent, FormEvent, useRef, useState } from 'react'
import { CollectionDialogTitle } from '../index'
import { addCollection } from '../../../../api/collection'

interface CreateCollectionCardProps {
  handleClose: () => void
  currentUser: User | null
}

const CreateCollectionCard = ({
  handleClose,
  currentUser,
}: CreateCollectionCardProps) => {
  const [value, setValue] = useState<string>('true')
  const nameRef = useRef('')
  const [disable, setDisable] = useState<boolean>(true)

  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    if (currentUser !== null) {
      const data = new FormData(event.currentTarget)
      const param = {
        id: 0,
        name: data.get('name')?.toString(),
        type: data.get('type')?.toString() === 'true',
        description: data.get('description')?.toString(),
        createTime: new Date(),
        updateTime: new Date(),
        authorId: currentUser.id,
      }
      console.log(param)
      addCollection(param).then((res) => {
        if (res.status !== 20) {
          console.log(res)
        }
      })
    }
  }

  const handleNameChange = () => {
    // @ts-ignore
    const value = nameRef.current.value
    if (value.trim() !== '') {
      setDisable(false)
    } else {
      setDisable(true)
    }
  }

  const handleRadioChange = (event: ChangeEvent<HTMLInputElement>) => {
    setValue((event.target as HTMLInputElement).value)
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
        label="收藏夹名称"
        autoFocus
        inputRef={nameRef}
        onChange={handleNameChange}
      />
      <TextField
        size="small"
        margin="normal"
        fullWidth
        multiline
        rows={5}
        id="description"
        name="description"
        label="收藏描述（可选）"
      />
      <RadioGroup name="type" value={value} onChange={handleRadioChange}>
        <Box sx={{ display: 'flex', alignItems: 'center' }}>
          <FormControlLabel value="true" control={<Radio />} label="公开" />
          <Typography variant="body2" color="text.secondary">
            {'有其他人关注此收藏夹时不可设置为私密'}
          </Typography>
        </Box>
        <Box sx={{ display: 'flex', alignItems: 'center' }}>
          <FormControlLabel value="false" control={<Radio />} label="私密" />
          <Typography variant="body2" color="text.secondary">
            {'只有你自己可以查看这个收藏夹'}
          </Typography>
        </Box>
      </RadioGroup>
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
          disabled={disable}
        >
          {'新建收藏夹'}
        </Button>
      </Box>
    </Box>
  )
}

interface CreateCollectionDialogProps {
  open: boolean
  handleClose: () => void
  handleClickSubmit: () => void
  currentUser: User | null
}

export const CreateCollectionDialog = ({
  open,
  handleClose,
  currentUser,
}: CreateCollectionDialogProps) => {
  return (
    <Box>
      <Dialog
        open={open}
        onClose={handleClose}
        aria-labelledby="scroll-dialog-title"
        aria-describedby="scroll-dialog-description"
      >
        <CollectionDialogTitle
          id="customized-dialog-title"
          onClose={handleClose}
        >
          <Typography
            variant="h5"
            fontWeight={500}
            sx={{ textAlign: 'center' }}
          >
            {'新建收藏夹'}
          </Typography>
        </CollectionDialogTitle>
        <DialogContent>
          <CreateCollectionCard
            handleClose={handleClose}
            currentUser={currentUser}
          />
        </DialogContent>
      </Dialog>
    </Box>
  )
}
