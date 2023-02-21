import { Box, Typography } from '@mui/material'
import { Column } from '../../../types/column'
import { formatDateTime } from '../../../utils/date'
import { PointerDivider } from '../../inline-divider'

interface ActionListProps {
  column: Column
  postsNum: number
  followNum: number
}

export const MetaData = ({ column, postsNum, followNum }: ActionListProps) => {
  return (
    <Box>
      <Typography color="text.secondary" component="div">
        {formatDateTime(column.createTime)}
        <PointerDivider />
        {'文章数 ' + postsNum}
        <PointerDivider />
        {'关注人数 ' + followNum}
      </Typography>
    </Box>
  )
}
