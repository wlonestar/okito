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
import { CurrentUserProps } from '../types/current-user-props'
import { UserPage } from '../pages/user'

export const CustomRoutes = ({ currentUser }: CurrentUserProps) => {
  return (
    <Routes>
      <Route path="/login" element={<SignInPage />} />
      <Route path="/register" element={<SignUpPage />} />
      <Route
        element={<Layout currentUser={currentUser} />}
        errorElement={<ErrorPage />}
      >
        <Route path="/" element={<HomePage currentUser={currentUser} />} />
        <Route path="/post" element={<PostsPage />} />
        <Route
          path="/post/:id"
          element={<PostPage currentUser={currentUser} />}
        />
        <Route path="/tag" element={<TagsPage />} />
        <Route path="/tag/:id" element={<TagPage />} />
        <Route path="/pin" element={<PinPage />} />
        <Route
          path="/user/:id"
          element={<UserPage currentUser={currentUser} />}
        />
      </Route>
    </Routes>
  )
}
