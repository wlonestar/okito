import { Route, Routes } from 'react-router-dom'
import { Layout } from '../layout'
import { HomePage } from '../pages/home'
import { ErrorPage } from '../pages/error'
import { PinPage } from '../pages/pin'
import { PostsPage } from '../pages/posts'
import { PostPage } from '../pages/post'
import { TagsPage } from '../pages/tags'
import { TagPage } from '../pages/tag'
import { SignInPage } from '../pages/auth/sign-in'
import { SignUpPage } from '../pages/auth/sign-up'

export const CustomRoutes = () => {
  return (
    <Routes>
      <Route path="/login" element={<SignInPage />} />
      <Route path="/register" element={<SignUpPage />} />
      <Route element={<Layout />} errorElement={<ErrorPage />}>
        <Route path="/" element={<HomePage />} />
        <Route path="/post" element={<PostsPage />} />
        <Route path="/post/:id" element={<PostPage />} />
        <Route path="/tag" element={<TagsPage />} />
        <Route path="/tag/:id" element={<TagPage />} />
        <Route path="/pin" element={<PinPage />} />
      </Route>
    </Routes>
  )
}
