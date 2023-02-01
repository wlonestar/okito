import React from 'react'
import './index.css'

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
    <div className="code-copy-btn">
      <button onClick={handleClick}>{copy}</button>
    </div>
  )
}
