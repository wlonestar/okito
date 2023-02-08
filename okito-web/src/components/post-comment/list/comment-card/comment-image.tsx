import { ButtonBase } from '@mui/material'
import { User } from '../../../../types/user'

interface CommentImageProps {
  author: User
}

export const CommentImage = ({ author }: CommentImageProps) => {
  return (
    <ButtonBase
      href={`/user/${author.id}`}
      target="_blank"
      sx={{ width: 42, height: 42 }}
    >
      <img
        style={{
          margin: 'auto',
          display: 'block',
          maxWidth: '100%',
          maxHeight: '100%',
          borderRadius: '21px',
        }}
        alt={author.avatar}
        src={author.avatar}
      />
    </ButtonBase>
  )
}
