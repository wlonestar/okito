export interface SignInForm {
  email?: string
  password?: string
  device: string
}

export interface SignUpForm {
  username?: string
  password?: string
  email?: string
}

export interface LogoutForm {
  id: number
  device: string
}
