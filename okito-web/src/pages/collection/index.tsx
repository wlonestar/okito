import { Box, Typography } from '@mui/material'
import { useParams } from 'react-router-dom'
import { User } from '../../types/user'

interface CollectionPageProps {
  currentUser: User | null
}

export default function CollectionPage({ currentUser }: CollectionPageProps) {
  const { id } = useParams()

  return (
    <Box>
      <Typography>collection {id}</Typography>
    </Box>
  )
}
