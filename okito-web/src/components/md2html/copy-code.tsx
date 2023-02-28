import React from 'react'
import { Link } from '@mui/material'

export default function CodeCopyButton({ children }: { children: any }) {
  const [copy, setCopy] = React.useState('copy')

  const handleClick = async () => {
    await navigator.clipboard.writeText(children[0].props.children[0])
    setCopy('copied!')
    setTimeout(() => {
      setCopy('copy')
    }, 1000)
  }

  return (
    <div
      style={{
        position: 'absolute',
        right: '10px',
        top: '-2px',
        fontSize: '1.5em',
        cursor: 'pointer',
        transition: 'all 0.3s ease-in-out',
      }}
    >
      <Link
        onClick={handleClick}
        sx={{
          fontSize: '14px',
          color: '#1976d2',
          padding: '0.25rem',
          '&:hover': { transform: 'scale(1.1)', opacity: '0.9' },
        }}
      >
        {copy}
      </Link>
    </div>
  )
}
