import { Box, Link, Paper, Typography } from '@mui/material'
import { useState } from 'react'
import { useMount } from '../../utils'

type Message = '上午好！' | '下午好！' | '晚上好！' | '你好！'

export const Side = () => {
  const [message, setMessage] = useState<Message>('你好！')

  useMount(() => {
    const today = new Date()
    const hour = today.getHours()
    if (hour < 12) {
      setMessage('上午好！')
    } else if (hour < 18) {
      setMessage('下午好！')
    } else {
      setMessage('晚上好！')
    }
  })

  return (
    <Box>
      <Paper
        sx={{
          p: 2,
          display: 'flex',
          flexDirection: 'column',
        }}
      >
        <Box>
          <Typography variant="h6" fontWeight={600} sx={{ mb: 1.2 }}>
            {message}
          </Typography>
          <Typography color="text.secondary">{'愿你度过充实的一天'}</Typography>
        </Box>
      </Paper>
      <Box sx={{ pt: 2 }}>
        <Link
          underline="none"
          color="text.primary"
          href={'/about'}
          target="_blank"
          sx={{ cursor: 'pointer' }}
        >
          <Typography
            variant="body2"
            color="text.secondary"
            sx={{ ':hover': { color: 'text.primary' } }}
          >
            关于我们
          </Typography>
        </Link>
      </Box>
    </Box>
  )
}
