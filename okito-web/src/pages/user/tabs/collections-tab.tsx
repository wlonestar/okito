import { Box, Paper, Typography } from '@mui/material'
import { useParams } from 'react-router-dom'
import { useAuth } from '../../../context/auth-context'
import { useState } from 'react'
import { Collection } from '../../../types/collection'
import { useMount } from '../../../utils/hook'
import { selectCollectionsByAuthorId } from '../../../api/collection'
import CollectionTitle from '../../../components/collection/collection-title'

export default function CollectionsTab() {
  const { id } = useParams()
  const { user } = useAuth()
  const currentUser = user
  const [value, setValue] = useState<number>(0)
  const [createCollections, setCreateCollections] = useState<Collection[]>([])

  useMount(async () => {
    const cc = await selectCollectionsByAuthorId(id as unknown as number)
    if (cc.status === 20) {
      console.log(cc.data)
      setCreateCollections(cc.data)
    }
  })

  return (
    <Box>
      <Paper>
        {createCollections.map((collection) => (
          <CollectionTitle
            key={collection.id}
            collection={collection}
            currentUser={currentUser}
          />
        ))}
      </Paper>
    </Box>
  )
}
