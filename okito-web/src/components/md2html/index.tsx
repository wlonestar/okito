import React from 'react'
import { CodeProps } from 'react-markdown/lib/ast-to-react'
import SyntaxHighlighter from 'react-syntax-highlighter'
import dark from 'react-syntax-highlighter/dist/esm/styles/hljs/dark'
import remarkGfm from 'remark-gfm'
import rehypeKatex from 'rehype-katex'
import ReactMarkdown from 'react-markdown'
import rehypeRaw from 'rehype-raw'
import CodeCopyButton from './copy-code'

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
        // style={{
        //   // @ts-ignore
        //   backgroundColor: (theme) =>
        //     theme.palette.mode === 'light' ? '#eee' : '#222',
        // }}
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
        fontFamily: '"Fira Code", Roboto, serif !important',
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
    <ReactMarkdown
      children={content}
      remarkPlugins={[remarkGfm]}
      rehypePlugins={[rehypeKatex, rehypeRaw]}
      components={components}
    />
  )
}
