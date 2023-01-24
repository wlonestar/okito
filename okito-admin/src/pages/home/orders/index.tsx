import React from 'react'
import Title from '../title'
import {
  Link,
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
} from '@mui/material'

function createData(
  id: number,
  date: string,
  name: string,
  shipTo: string,
  paymentMethod: string,
  amount: number
) {
  return { id, date, name, shipTo, paymentMethod, amount }
}

const rows = [
  createData(0, '16 Mar, 2022', 'iunedrff', 'fsd', 'sdfsd', 12.11),
  createData(1, '16 Mar, 2022', 'iunedrff', 'fsd', 'sdfsd', 12.11),
  createData(2, '16 Mar, 2022', 'iunedrff', 'fsd', 'sdfsd', 12.11),
]

function preventDefault(event: React.MouseEvent) {
  event.preventDefault()
}

export default function Order() {
  return (
    <React.Fragment>
      <Title>Record Orders</Title>
      <Table size="small">
        <TableHead>
          <TableRow>
            <TableCell>Date</TableCell>
            <TableCell>Name</TableCell>
            <TableCell>Ship To</TableCell>
            <TableCell>Payment Method</TableCell>
            <TableCell align="right">Sale Amount</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {rows.map((row) => (
            <TableRow key={row.id}>
              <TableCell>{row.date}</TableCell>
              <TableCell>{row.name}</TableCell>
              <TableCell>{row.shipTo}</TableCell>
              <TableCell>{row.paymentMethod}</TableCell>
              <TableCell align="right">{`$${row.amount}`}</TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
      <Link
        color="primary"
        href="src/pages/home/orders/index#"
        onClick={preventDefault}
        sx={{ mt: 3 }}
      >
        See more orders
      </Link>
    </React.Fragment>
  )
}
