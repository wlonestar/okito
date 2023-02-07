import { CustomRoutes } from './routes'
import { useAuth } from './context/auth-context'
import { useMount } from './utils/hook'

function App() {
  const { user } = useAuth()

  useMount(() => {
    console.log(user)
  })

  return <CustomRoutes user={user} />
}

export default App
