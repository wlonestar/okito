import React from 'react'
import { Button } from '@mui/material'

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
        color: '#333',
        position: 'absolute',
        right: '10px',
        top: '-2px',
        fontSize: '1.5em',
        cursor: 'pointer',
        transition: 'all 0.3s ease-in-out',
      }}
    >
      <Button
        size="small"
        onClick={handleClick}
        sx={{
          fontSize: '8px',
          color: '#f3f3f3',
          backgroundColor: '#333',
          borderStyle: 'solid',
          borderRadius: '5px',
          '&:hover': {
            transform: 'scale(1.1)',
            opacity: '0.9',
          },
        }}
      >
        {copy}
      </Button>
    </div>
  )
}
