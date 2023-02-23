import { ButtonBase } from '@mui/material'

export interface AuthorAvatarProp {
  id: number
  username: string
  avatar: string
}

interface AuthorAvatarProps {
  author: AuthorAvatarProp
  width?: number
  height?: number
}

export default function AuthorAvatar({
  author,
  width = 32,
  height = 32,
}: AuthorAvatarProps) {
  return (
    <ButtonBase
      href={`/user/${author.id}`}
      target="_blank"
      sx={{ width: width, height: height }}
    >
      <img
        style={{
          margin: 'auto',
          display: 'block',
          maxWidth: '100%',
          maxHeight: '100%',
          borderRadius: width / 2,
        }}
        alt={author.username}
        src={author.avatar}
      />
    </ButtonBase>
  )
}
