import { Route, Routes } from 'react-router-dom'
import { Layout } from '../layout'
import { ErrorPage } from '../pages/error'
import { lazy, Suspense } from 'react'
import { defaultUser, User } from '../types/user'
import { Box, CircularProgress } from '@mui/material'
import { HomeFollowTab, HomeHotTab, HomeIndexTab } from '../pages/home/main'
import { PinFollowTab, PinHotTab, PinIndexTab } from '../pages/pin'

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
const CategoryPage = lazy(() => import('../pages/category'))
const CreatorPage = lazy(() => import('../pages/creator'))

const Loading = () => {
  return (
    <Box
      sx={{
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        height: '100vh',
      }}
    >
      <CircularProgress />
    </Box>
  )
}

interface CustomRoutesProps {
  currentUser: User | null
}

export default function CustomRoutes(params: CustomRoutesProps) {
  const user = params.currentUser !== null ? params.currentUser : defaultUser

  return (
    <Suspense fallback={<Loading />}>
      <Routes>
        <Route path="/login" element={<SignInPage />} />
        <Route path="/register" element={<SignUpPage />} />
        <Route path="/about" element={<AboutPage />} />
        <Route element={<Layout {...params} />} errorElement={<ErrorPage />}>
          <Route path="/" element={<HomePage {...params} />}>
            <Route path="/" element={<HomeIndexTab></HomeIndexTab>} />
            <Route path="/hot" element={<HomeHotTab></HomeHotTab>} />
            <Route path="/follow" element={<HomeFollowTab />} />
          </Route>
          <Route path="/post" element={<PostsPage />} />
          <Route path="/post/:id" element={<PostPage {...params} />} />
          <Route path="/tag" element={<TagsPage />} />
          <Route path="/tag/:id" element={<TagPage />} />
          <Route path="/column/:id" element={<ColumnPage {...params} />} />
          <Route
            path="/collection/:id"
            element={<CollectionPage {...params} />}
          />
          <Route path="/pin" element={<PinPage {...params} />}>
            <Route path="/pin/" element={<PinIndexTab></PinIndexTab>} />
            <Route path="/pin/hot" element={<PinHotTab></PinHotTab>} />
            <Route path="/pin/follow" element={<PinFollowTab />} />
          </Route>
          <Route path="/user/:id" element={<UserPage {...params} />}>
            <Route path="/user/:id/" element={<HomeTab {...params} />} />
            <Route path="/user/:id/posts" element={<PostsTab {...params} />} />
            <Route
              path="/user/:id/columns"
              element={<ColumnsTab {...params} />}
            />
            <Route path="/user/:id/pins" element={<PinsTab {...params} />} />
            <Route
              path="/user/:id/collections"
              element={<CollectionsTab {...params} />}
            />
            <Route
              path="/user/:id/follows"
              element={<FollowsTab {...params} />}
            />
          </Route>
          <Route
            path="/user/settings"
            element={<SettingsPage currentUser={user} />}
          />
          <Route path="/category/:id" element={<CategoryPage />} />
        </Route>
        <Route path="/creator" element={<CreatorPage {...params} />} />
      </Routes>
    </Suspense>
  )
}
