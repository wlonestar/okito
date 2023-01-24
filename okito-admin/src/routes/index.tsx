import { Route, Routes } from 'react-router-dom'
import { PinPage } from '../pages/pin'
import { HomePage } from '../pages/home'
import { CategoryPage } from '../pages/category'
import { CollectionPage } from '../pages/collection'
import { ColumnPage } from '../pages/column'
import { CommentPage } from '../pages/comment'
import { PostPage } from '../pages/post'
import { RolePage } from '../pages/role'
import { TagPage } from '../pages/tag'
import { UserPage } from '../pages/user'
import Layout from '../layout'
import ErrorPage from '../pages/error'

export const CustomRoutes = () => {
  return (
    <Routes>
      <Route element={<Layout />} errorElement={<ErrorPage />}>
        <Route path="/" element={<HomePage />} />
        <Route path="/category" element={<CategoryPage />} />
        <Route path="/collection" element={<CollectionPage />} />
        <Route path="/column" element={<ColumnPage />} />
        <Route path="/comment" element={<CommentPage />} />
        <Route path="/pin" element={<PinPage />} />
        <Route path="/post" element={<PostPage />} />
        <Route path="/role" element={<RolePage />} />
        <Route path="/tag" element={<TagPage />} />
        <Route path="/user" element={<UserPage />} />
      </Route>
    </Routes>
  )
}
