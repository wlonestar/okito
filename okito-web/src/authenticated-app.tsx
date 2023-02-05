import { useAuth } from './context/auth-context'

export const AuthenticatedApp = () => {
  const { logout } = useAuth()
  return (
    <div>
      <button onClick={logout}>logout</button>
      <p>authenticated app</p>
    </div>
  )
}
