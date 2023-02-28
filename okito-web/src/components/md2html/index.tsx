import React from 'react'
import { CodeProps } from 'react-markdown/lib/ast-to-react'
import SyntaxHighlighter from 'react-syntax-highlighter'
import dark from 'react-syntax-highlighter/dist/esm/styles/hljs/dark'
import remarkGfm from 'remark-gfm'
import rehypeKatex from 'rehype-katex'
import ReactMarkdown from 'react-markdown'
import rehypeRaw from 'rehype-raw'
import CodeCopyButton from './copy-code'
import { Box } from '@mui/material'

const components = {
  code({ node, inline, className, children, ...props }: CodeProps) {
    const match = /language-(\w+)/.exec(className || '')
    return !inline && match ? (
      <SyntaxHighlighter
        children={String(children).replace(/\n$/, '')}
        // @ts-ignore
        style={dark}
        language={match[1]}
        PreTag="div"
        {...props}
      />
    ) : (
      <code
        className={className}
        {...props}
        style={{ fontFamily: 'Fira Code' }}
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
      {/*<CodeCopyButton>{children}</CodeCopyButton>*/}
      {children}
    </pre>
  ),

  // @ts-ignore
  span: ({ children }) => (
    <span style={{ fontFamily: 'Fira Code' }}>{children}</span>
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
        children={content}
        remarkPlugins={[remarkGfm]}
        rehypePlugins={[rehypeKatex, rehypeRaw]}
        components={components}
      />
    </Box>
  )
}
