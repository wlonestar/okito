import { Route, Routes } from 'react-router-dom'
import { Layout } from '../layout'
import { HomePage } from '../pages/home'
import { ErrorPage } from '../pages/error'
import { PinPage } from '../pages/pin'
import { PostsPage } from '../pages/posts'
import { PostPage } from '../pages/post'

export const CustomRoutes = () => {
  return (
    <Routes>
      <Route element={<Layout />} errorElement={<ErrorPage />}>
        <Route path="/" element={<HomePage />} />
        <Route path="/post" element={<PostsPage />} />
        <Route path="/post/:id" element={<PostPage />} />
        <Route path="/pin" element={<PinPage />} />
      </Route>
    </Routes>
  )
}
