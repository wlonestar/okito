import { CustomRoutes } from './routes'
import { useAuth } from './context/auth-context'

function App() {
  const { user } = useAuth()

  return <CustomRoutes />
}

export default App
