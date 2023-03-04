import React, { SyntheticEvent, useState } from 'react'
import { Box, Button, Divider, Paper, Tab, Tabs } from '@mui/material'
import { Link, useParams } from 'react-router-dom'
import { Collection, defaultCollection } from '../../../types/collection'
import { useMount, useSort } from '../../../utils'
import {
  selectCollectionsByAuthorId,
  selectCollectionsByFollowerId,
} from '../../../api/collection'
import CollectionTitle from '../../../components/collection/collection-title'
import { TabPanel } from '../../../components/tab'
import AddOutlinedIcon from '@mui/icons-material/AddOutlined'
import { User } from '../../../types/user'
import { EditCollectionDialog } from '../../../components/dialog/collection-dialog/edit-collection'

interface CollectionsTabProps {
  currentUser: User | null
}

export default function CollectionsTab({ currentUser }: CollectionsTabProps) {
  const { id } = useParams()
  const [homepage, setHomepage] = useState<boolean>(false)
  const [value, setValue] = useState<number>(0)
  const [createCollections, setCreateCollections] = useState<Collection[]>([])
  const [followCollections, setFollowCollections] = useState<Collection[]>([])
  const [open, setOpen] = useState<boolean>(false)
  const [prevData, setPrevData] = useState<Collection>(defaultCollection)

  const handleClose = () => {
    setOpen(false)
  }

  const handleOpen = (collection: Collection) => {
    setOpen(true)
    setPrevData(collection)
  }

  const handleChange = (event: SyntheticEvent, newValue: number) => {
    setValue(newValue)
  }

  useMount(async () => {
    const userId = id as unknown as number
    // I don't know why the above convert not work
    if (currentUser !== null && userId) {
      if (currentUser.id === parseInt(String(userId))) {
        setHomepage(true)
      }
    }
    const cc = await selectCollectionsByAuthorId(userId)
    if (cc.status === 20) {
      const data: Collection[] = useSort(cc.data, 'updateTime', 'desc')
      if (currentUser !== null && currentUser.id == userId) {
        // show private collections
        setCreateCollections(data)
      } else {
        // only show public collections
        const publicCollections = data.filter((collection) => collection.type)
        setCreateCollections(publicCollections)
      }
    }
    const fc = await selectCollectionsByFollowerId(userId)
    if (fc.status === 20) {
      const data: Collection[] = useSort(fc.data, 'updateTime', 'desc')
      setFollowCollections(data)
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
          <Box>
            <TabPanel index={0} value={value}>
              {createCollections.map((collection) => (
                <CollectionTitle
                  key={collection.id}
                  collection={collection}
                  homepage={homepage}
                  handleOpen={() => handleOpen(collection)}
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
            <EditCollectionDialog
              open={open}
              prevData={prevData}
              collections={createCollections}
              handleClose={handleClose}
              currentUser={currentUser}
            />
          </Box>
        ) : (
          <Box>
            {createCollections.map((collection) => (
              <CollectionTitle
                key={collection.id}
                collection={collection}
                homepage={homepage}
                currentUser={currentUser}
              />
            ))}
          </Box>
        )}
      </Paper>
    </Paper>
  )
}
