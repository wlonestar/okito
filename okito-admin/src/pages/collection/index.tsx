import {
  addCollection,
  selectAllCollections,
  selectAllCollectionsByPage,
  selectCollectionById,
  updateCollection,
} from '../../api/collection'
import { PageParam } from '../../types/page-param'
import { Collection } from '../../types/collection'
import { useState } from 'react'
import { useDebounce, useMount } from '../../utils/hook'

export const CollectionPage = () => {
  // selectAllCollections().then((res) => {
  //   console.log(res.data)
  // })
  //
  // const page: PageParam = {
  //   page: 0,
  //   size: 4,
  //   sort: 'updateTime,asc'
  // }
  //
  // selectAllCollectionsByPage(page).then((res) => {
  //   console.log(res.data)
  // })
  //
  // selectCollectionById(5).then((res) => {
  //   console.log(res.data)
  // })
  //
  // const collection: Collection = {
  //   name: 'hahaha',
  //   cover: 'test test',
  //   description: 'ha ha ha ha ha ha ha',
  //   createTime: new Date(),
  //   updateTime: new Date()
  // }
  //
  // addCollection(collection).then((res) => {
  //   console.log(res)
  // })

  // const [collection, setCollection] = useState<Collection>({
  //   id: 0,
  //   name: '',
  //   cover: '',
  //   description: '',
  //   createTime: new Date(),
  //   updateTime: new Date()
  // })

  // useMount(() => {
  //   selectCollectionById(12).then((res) => {
  //     console.log(res)
  //     setCollection(res.data)
  //   })
  // })

  // interface Props {
  //   collection: Collection
  // }
  //
  // const CollectionCard = ({collection}: Props) => {
  //   return (
  //     <div>
  //       <p>{collection.id}</p>
  //       <p>{collection.name}</p>
  //       <p>{collection.cover}</p>
  //       <p>{collection.description}</p>
  //       <p>{new Date(collection.createTime).toLocaleString()}</p>
  //       <p>{new Date(collection.updateTime).toLocaleString()}</p>
  //     </div>
  //   )
  // }

  return (
    <>
      <div>collection page</div>
      {/*<CollectionCard collection={collection} />*/}
    </>
  )
}
