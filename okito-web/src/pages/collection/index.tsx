import { Box, Typography } from '@mui/material'
import { useParams } from 'react-router-dom'
import { User } from '../../types/user'

interface CollectionPageProps {
  currentUser: User | null
}

export default function CollectionPage({ currentUser }: CollectionPageProps) {
  const { id } = useParams()

  return (
    <Box
      sx={{
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        mt: 4,
      }}
    >
      <Typography>{'这片区域以后再来探索吧'}</Typography>
    </Box>
  )
}
