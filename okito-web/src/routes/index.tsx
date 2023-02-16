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
import { PostsTab } from '../pages/user/tabs/posts-tab'
import { FollowsTab } from '../pages/user/tabs/follows-tab'
import { CollectionsTab } from '../pages/user/tabs/collections-tab'
import { PinsTab } from '../pages/user/tabs/pins-tab'
import { ColumnsTab } from '../pages/user/tabs/columns-tab'

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
        >
          <Route path="/user/:id/posts" element={<PostsTab />} />
          <Route path="/user/:id/columns" element={<ColumnsTab />} />
          <Route path="/user/:id/pins" element={<PinsTab />} />
          <Route path="/user/:id/collections" element={<CollectionsTab />} />
          <Route path="/user/:id/follows" element={<FollowsTab />} />
        </Route>
      </Route>
    </Routes>
  )
}
