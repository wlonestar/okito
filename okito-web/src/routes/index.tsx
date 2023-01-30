import { Route, Routes } from 'react-router-dom'
import Layout from '../layout'
import { HomePage } from '../pages/home'

export const CustomRoutes = () => {
  return (
    <Routes>
      <Route element={<Layout />}>
        <Route path="/" element={<HomePage />} />
      </Route>
    </Routes>
  )
}
