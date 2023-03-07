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
import { CustomDialogTitle } from '../index'
import { addCollection, updateCollection } from '../../../../api/collection'
import { Collection } from '../../../../types/collection'

interface EditCollectionCardProps {
  prevData?: Collection
  collections?: Collection[]
  handleClose: () => void
  currentUser: User | null
}

const EditCollectionCard = ({
  prevData,
  collections,
  handleClose,
  currentUser,
}: EditCollectionCardProps) => {
  const [value, setValue] = useState<string>('true')
  const nameRef = useRef('')
  const [disable, setDisable] = useState<boolean>(prevData === undefined)

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
      if (prevData === undefined) {
        addCollection(param).then((res) => {
          if (res.status !== 20) {
            console.log(res)
          }
          console.log(res.data)
          if (collections !== undefined) {
            collections.push(res.data)
          }
          handleClose()
        })
      } else {
        param.id = prevData.id
        updateCollection(param).then((res) => {
          if (res.status !== 20) {
            console.log(res)
          }
          console.log(res.data)
          handleClose()
        })
      }
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
        defaultValue={prevData !== undefined ? prevData.name : null}
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
        defaultValue={prevData !== undefined ? prevData.description : null}
      />
      <RadioGroup
        name="type"
        value={value}
        defaultValue={
          prevData !== undefined ? (prevData.type ? 'true' : 'false') : null
        }
        onChange={handleRadioChange}
      >
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
          {prevData === undefined ? '新建收藏夹' : '更新收藏夹'}
        </Button>
      </Box>
    </Box>
  )
}

interface EditCollectionDialogProps {
  open: boolean
  prevData?: Collection
  collections?: Collection[]
  handleClose: () => void
  currentUser: User | null
}

export const EditCollectionDialog = ({
  open,
  prevData,
  collections,
  handleClose,
  currentUser,
}: EditCollectionDialogProps) => {
  return (
    <Box>
      <Dialog
        open={open}
        onClose={handleClose}
        aria-labelledby="scroll-dialog-title"
        aria-describedby="scroll-dialog-description"
      >
        <CustomDialogTitle id="customized-dialog-title" onClose={handleClose}>
          <Typography
            variant="h5"
            fontWeight={500}
            sx={{ textAlign: 'center' }}
          >
            {'编辑收藏夹'}
          </Typography>
        </CustomDialogTitle>
        <DialogContent>
          <EditCollectionCard
            prevData={prevData}
            collections={collections}
            handleClose={handleClose}
            currentUser={currentUser}
          />
        </DialogContent>
      </Dialog>
    </Box>
  )
}
