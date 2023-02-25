import { Route, Routes } from 'react-router-dom'
import { Layout } from '../layout'
import { ErrorPage } from '../pages/error'
import { CurrentUserProps } from '../types/current-user-props'
import { lazy, Suspense } from 'react'

const SignInPage = lazy(() => import('../pages/auth/sign-in'))
const SignUpPage = lazy(() => import('../pages/auth/sign-up'))
const AboutPage = lazy(() => import('../pages/about'))
const HomePage = lazy(() => import('../pages/home'))
const PostsPage = lazy(() => import('../pages/posts'))
const PostPage = lazy(() => import('../pages/post'))
const TagsPage = lazy(() => import('../pages/tags'))
const TagPage = lazy(() => import('../pages/tag'))
const ColumnPage = lazy(() => import('../pages/column'))
const CollectionPage = lazy(() => import('../pages/collection'))
const PinPage = lazy(() => import('../pages/pin'))

const UserPage = lazy(() => import('../pages/user'))
const HomeTab = lazy(() => import('../pages/user/tabs/home-tab'))
const PostsTab = lazy(() => import('../pages/user/tabs/posts-tab'))
const ColumnsTab = lazy(() => import('../pages/user/tabs/columns-tab'))
const PinsTab = lazy(() => import('../pages/user/tabs/pins-tab'))
const CollectionsTab = lazy(() => import('../pages/user/tabs/collections-tab'))
const FollowsTab = lazy(() => import('../pages/user/tabs/follows-tab'))

const SettingsPage = lazy(() => import('../pages/user/settings'))
const CreatorPage = lazy(() => import('../pages/creator'))

export default function CustomRoutes(params: CurrentUserProps) {
  return (
    <Suspense fallback={<div className="container">Loading...</div>}>
      <Routes>
        <Route path="/login" element={<SignInPage />} />
        <Route path="/register" element={<SignUpPage />} />
        <Route path="/about" element={<AboutPage />} />
        <Route element={<Layout {...params} />} errorElement={<ErrorPage />}>
          <Route path="/" element={<HomePage {...params} />} />
          <Route path="/post" element={<PostsPage />} />
          <Route path="/post/:id" element={<PostPage {...params} />} />
          <Route path="/tag" element={<TagsPage />} />
          <Route path="/tag/:id" element={<TagPage />} />
          <Route path="/column/:id" element={<ColumnPage {...params} />} />
          <Route
            path="/collection/:id"
            element={<CollectionPage {...params} />}
          />
          <Route path="/pin" element={<PinPage {...params} />} />
          <Route path="/user/:id" element={<UserPage {...params} />}>
            <Route path="/user/:id/" element={<HomeTab />} />
            <Route path="/user/:id/posts" element={<PostsTab />} />
            <Route path="/user/:id/columns" element={<ColumnsTab />} />
            <Route path="/user/:id/pins" element={<PinsTab />} />
            <Route path="/user/:id/collections" element={<CollectionsTab />} />
            <Route path="/user/:id/follows" element={<FollowsTab />} />
          </Route>
          <Route path="/user/settings" element={<SettingsPage {...params} />} />
          <Route path="/creator" element={<CreatorPage {...params} />} />
        </Route>
      </Routes>
    </Suspense>
  )
}
