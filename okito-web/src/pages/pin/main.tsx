import { Box, Button, Paper, TextField } from '@mui/material'
import { FormEvent } from 'react'
import { Pin, PinParam } from '../../types/pin'
import PinCard from '../../components/pin/pin-card'
import { User } from '../../types/user'
import { addPin } from '../../api/pin'

interface PinBoxProps {
  currentUser: User | null
}

function PinBox({ currentUser }: PinBoxProps) {
  const handleSubmit = (event: FormEvent<HTMLFormElement>) => {
    if (currentUser !== null) {
      event.preventDefault()
      const data = new FormData(event.currentTarget)
      const pinParam: PinParam = {
        id: 0,
        content: data.get('content')?.toString(),
        createTime: new Date(),
        updateTime: new Date(),
        authorId: currentUser.id,
      }
      console.log(pinParam)
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
        />
        <Box
          sx={{ width: '100%', display: 'flex', alignItems: 'center', pt: 2 }}
        >
          <Button variant="contained" type="submit" sx={{ marginLeft: 'auto' }}>
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

function PinList({ pins, currentUser }: MainProps) {
  return (
    <>
      {pins.map((pin) => (
        <PinCard key={pin.id} pin={pin} currentUser={currentUser} />
      ))}
    </>
  )
}

export default function Main({ pins, currentUser }: MainProps) {
  return (
    <Box>
      <PinBox currentUser={currentUser} />
      <PinList pins={pins} currentUser={currentUser} />
    </Box>
  )
}
