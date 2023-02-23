import React, { SyntheticEvent, useState } from 'react'
import { Box, Button, Divider, Paper, Tab, Tabs } from '@mui/material'
import { Link, useParams } from 'react-router-dom'
import { useAuth } from '../../../context/auth-context'
import { Collection } from '../../../types/collection'
import { useMount, useSort } from '../../../utils/hook'
import {
  selectCollectionsByAuthorId,
  selectCollectionsByFollowerId,
} from '../../../api/collection'
import CollectionTitle from '../../../components/collection/collection-title'
import { TabPanel } from '../../../components/tab'
import AddOutlinedIcon from '@mui/icons-material/AddOutlined'

export default function CollectionsTab() {
  const { id } = useParams()
  const { user } = useAuth()
  const currentUser = user
  const [homepage, setHomepage] = useState<boolean>(false)
  const [value, setValue] = useState<number>(0)
  const [createCollections, setCreateCollections] = useState<Collection[]>([])
  const [followCollections, setFollowCollections] = useState<Collection[]>([])

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
  }

  useMount(async () => {
    const userId = id as unknown as number
    const cc = await selectCollectionsByAuthorId(userId)
    if (cc.status === 20) {
      const data: Collection[] = useSort(cc.data, 'updateTime', 'desc')
      setCreateCollections(data)
    }
    const fc = await selectCollectionsByFollowerId(userId)
    if (fc.status === 20) {
      const data: Collection[] = useSort(fc.data, 'updateTime', 'desc')
      setFollowCollections(data)
    }
    if (currentUser !== null && cc.data.length > 0) {
      if (currentUser.id === cc.data[0].authorId) {
        setHomepage(true)
      }
    }
  })

  return (
    <Paper>
      <Box
        sx={{
          width: '100%',
          display: 'flex',
          alignItems: 'center',
          flexWrap: 'wrap',
          borderRadius: '5px',
          borderWidth: '1px 1px thin',
        }}
      >
        {homepage ? (
          <>
            <Tabs value={value} onChange={handleChange}>
              <Tab
                label={'我创建的 ' + `${createCollections.length}`}
                tabIndex={0}
                component={Link}
                to={`/user/${id}/collections?sort=hot`}
              />
              <Tab
                label={'我订阅的 ' + `${followCollections.length}`}
                tabIndex={1}
                component={Link}
                to={`/user/${id}/collections?sort=new`}
              />
            </Tabs>
            {/*TODO: add a new collection*/}
            <Button variant="text" sx={{ marginLeft: 'auto', mr: 1 }}>
              <AddOutlinedIcon />
              {'新建收藏夹'}
            </Button>
          </>
        ) : (
          ''
        )}
      </Box>
      <Divider />
      <Paper>
        {homepage ? (
          <>
            <TabPanel index={0} value={value}>
              {createCollections.map((collection) => (
                <CollectionTitle
                  key={collection.id}
                  collection={collection}
                  homepage={homepage}
                  currentUser={currentUser}
                />
              ))}
            </TabPanel>
            <TabPanel index={1} value={value}>
              {followCollections.map((collection) => (
                <CollectionTitle
                  key={collection.id}
                  collection={collection}
                  homepage={homepage}
                  currentUser={currentUser}
                />
              ))}
            </TabPanel>
          </>
        ) : (
          <>
            {createCollections.map((collection) => (
              <CollectionTitle
                key={collection.id}
                collection={collection}
                homepage={homepage}
                currentUser={currentUser}
              />
            ))}
          </>
        )}
      </Paper>
    </Paper>
  )
}
