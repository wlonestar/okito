import React from 'react'
import { Box } from '@mui/material'
import { CodeProps } from 'react-markdown/lib/ast-to-react'
import { Prism as SyntaxHighlighter } from 'react-syntax-highlighter'
import ReactMarkdown from 'react-markdown'
import { atomDark } from 'react-syntax-highlighter/dist/esm/styles/prism'
import remarkGfm from 'remark-gfm'
import rehypeKatex from 'rehype-katex'
import rehypeRaw from 'rehype-raw'
import CodeCopyButton from './copy-code'
import './style.scss'

const components = {
  code({ node, inline, className, children, ...props }: CodeProps) {
    const match = /language-(\w+)/.exec(className || '')
    return !inline && match ? (
      <SyntaxHighlighter
        children={String(children).replace(/\n$/, '')}
        // @ts-ignore
        style={atomDark}
        language={match[1].toLowerCase()}
        PreTag="section"
        {...props}
      />
    ) : (
      <code
        className={className}
        {...props}
        style={{
          color: '#476582',
          backgroundColor: 'rgba(27,31,35,.05)',
          padding: '.2rem .5rem',
          borderRadius: '3px',
        }}
      >
        {children}
      </code>
    )
  },

  // @ts-ignore
  pre: ({ children }) => (
    <pre
      style={{
        position: 'relative',
        fontFamily: 'Fira Code',
      }}
    >
      <CodeCopyButton>{children}</CodeCopyButton>
      {children}
    </pre>
  ),

  // @ts-ignore
  p: ({ node, children }) => {
    // @ts-ignore
    if (node.children[0].tagName === 'img') {
      const image: any = node.children[0]
      return (
        <img
          style={{ maxWidth: '100%' }}
          src={`${image.properties.src}`}
          alt=""
        />
      )
    }
    return <p>{children}</p>
  },
}

interface Md2htmlProps {
  content: string
}

export default function Md2html({ content }: Md2htmlProps) {
  return (
    <Box sx={{ fontFamily: 'Fira Code' }}>
      <ReactMarkdown
        className="react-markdown"
        children={content}
        remarkPlugins={[remarkGfm]}
        rehypePlugins={[rehypeKatex, rehypeRaw]}
        components={components}
      />
    </Box>
  )
}
