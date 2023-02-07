import { createContext, ReactNode, useContext, useState } from 'react'
import { User } from '../types/user'
import { SignInForm } from '../types/sign-in-param'
import { SignUpForm } from '../types/sign-up-param'
import * as auth from '../auth-provider'
import { http } from '../utils/http'
import { useMount } from '../utils/hook'

// TODO: need to modify uri
const bootstrapUser = async () => {
  let user = null
  const token = auth.getToken()
  const param = {
    tokenValue: token,
  }
  if (token) {
    user = await http('auth/check', { data: param, token })
  }
  return user
}

const AuthContext = createContext<
  | {
      user: User | null
      login: (form: SignInForm) => Promise<void>
      register: (form: SignUpForm) => Promise<void>
      logout: () => Promise<void>
    }
  | undefined
>(undefined)
AuthContext.displayName = 'AuthContext'

export const AuthProvider = ({ children }: { children: ReactNode }) => {
  const [user, setUser] = useState<User | null>(null)

  const login = (form: SignInForm) => auth.login(form).then(setUser)
  const register = (form: SignUpForm) => auth.register(form).then(setUser)
  const logout = () => auth.logout().then(() => setUser(null))

  useMount(() => {
    bootstrapUser().then(setUser)
  })

  return (
    <AuthContext.Provider
      children={children}
      value={{ user, login, register, logout }}
    />
  )
}

export const useAuth = () => {
  const context = useContext(AuthContext)
  if (!context) {
    throw new Error('useAuth must use in AuthProvider')
  }
  return context
}
