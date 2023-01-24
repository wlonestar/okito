import React from 'react'
import Title from '../title'
import { Link, Typography } from '@mui/material'

function preventDefault(event: React.MouseEvent) {
  event.preventDefault()
}

export default function Deposits() {
  return (
    <React.Fragment>
      <Title>Recent Deposits</Title>
      <Typography component="p" variant="h4">
        $3,024.00
      </Typography>
      <Typography color="text.secondary" sx={{ flex: 1 }}>
        on 15 March, 2019
      </Typography>
      <div>
        <Link
          color="primary"
          href="src/pages/home/deposits/index#"
          onClick={preventDefault}
        >
          View balance
        </Link>
      </div>
    </React.Fragment>
  )
}
