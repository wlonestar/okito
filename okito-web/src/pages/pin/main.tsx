import { Box, Button, Paper, TextField } from '@mui/material'
import { FormEvent } from 'react'
import { Pin } from '../../types/pin'
import PinCard from '../../components/pin-card'

function InputBox() {
  const handleSubmit = (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    // TODO
    const data = new FormData(event.currentTarget)
    console.log(data.get('content')?.toString())
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
}

function PinList({ pins }: MainProps) {
  return (
    <>
      {pins.map((pin) => (
        <PinCard key={pin.id} pin={pin} />
      ))}
    </>
  )
}

export default function Main({ pins }: MainProps) {
  return (
    <Box>
      <InputBox />
      <PinList pins={pins} />
    </Box>
  )
}
