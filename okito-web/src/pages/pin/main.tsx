import { Box, Button, Paper, TextField } from '@mui/material'
import { FormEvent, useRef, useState } from 'react'
import { Pin, PinParam } from '../../types/pin'
import { User } from '../../types/user'
import { addPin } from '../../api/pin'
import PinList from '../../components/pin/pin-list'

interface PinBoxProps {
  currentUser: User | null
}

function PinBox({ currentUser }: PinBoxProps) {
  const [disable, setDisable] = useState<boolean>(true)
  const valueRef = useRef('')

  const handleSubmit = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    if (currentUser !== null) {
      const data = new FormData(event.currentTarget)
      const pinParam: PinParam = {
        id: 0,
        content: data.get('content')?.toString(),
        createTime: new Date(),
        updateTime: new Date(),
        authorId: currentUser.id,
      }
      addPin(pinParam).then((res) => {
        if (res.status !== 20) {
          console.log(res)
        }
      })
      window.location.reload()
    } else {
      window.location.assign('/login')
    }
  }

  const handleChange = () => {
    // @ts-ignore
    const value = valueRef.current.value
    if (value.trim() !== '') {
      setDisable(false)
    } else {
      setDisable(true)
    }
  }

  return (
    <Paper>
      <Box component="form" onSubmit={handleSubmit} noValidate sx={{ p: 3 }}>
        <TextField
          variant="outlined"
          multiline
          rows={5}
          id="content"
          name="content"
          placeholder="一起分享新鲜事！"
          fullWidth
          onChange={handleChange}
          inputRef={valueRef}
        />
        <Box
          sx={{ width: '100%', display: 'flex', alignItems: 'center', pt: 2 }}
        >
          <Button
            variant="contained"
            type="submit"
            sx={{ marginLeft: 'auto' }}
            disabled={disable}
          >
            {'发布'}
          </Button>
        </Box>
      </Box>
    </Paper>
  )
}

interface MainProps {
  pins: Pin[]
  currentUser: User | null
}

export default function Main({ pins, currentUser }: MainProps) {
  return (
    <Box>
      <PinBox currentUser={currentUser} />
      <PinList pins={pins} currentUser={currentUser} />
    </Box>
  )
}
