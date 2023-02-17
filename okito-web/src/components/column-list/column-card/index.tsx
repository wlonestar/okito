import {
  Box,
  Button,
  Card,
  CardContent,
  CardMedia,
  Grid,
  IconButton,
  Link,
  Typography,
} from '@mui/material'
import { Column } from '../../../types/column'
import { User, userDefault } from '../../../types/user'
import { MetaList } from './meta-list'
import { useState } from 'react'
import { useMount } from '../../../utils/hook'
import {
  countFollowByColumnId,
  countPostsByColumnId,
} from '../../../api/column'
import { useParams } from 'react-router-dom'
import {
  selectColumnTypeByUserIdAndColumnId,
  selectUserById,
} from '../../../api/user'
import MoreHorizOutlinedIcon from '@mui/icons-material/MoreHorizOutlined'
import AddOutlinedIcon from '@mui/icons-material/AddOutlined'
import CheckOutlinedIcon from '@mui/icons-material/CheckOutlined'

interface ColumnCardProps {
  column: Column
  currentUser: User | null
}

export const ColumnCard = ({ column, currentUser }: ColumnCardProps) => {
  const { id } = useParams()
  const [postsNum, setPostsNum] = useState<number>(0)
  const [followNum, setFollowNum] = useState<number>(0)
  const [user, setUser] = useState<User>(userDefault)
  const [homepage, setHomepage] = useState<boolean>(false)
  const [followed, setFollowed] = useState<boolean>(false)

  const handleClick = () => {
    console.log('click')
  }

  useMount(async () => {
    const postsNum = await countPostsByColumnId(column.id)
    setPostsNum(postsNum.data)
    const followNum = await countFollowByColumnId(column.id)
    setFollowNum(followNum.data)
    // TODO: need to rewrite
    if ((id as unknown as number) === currentUser?.id) {
      console.log('登录用户和当前页面用户是同一人')
      setHomepage(true)
    } else {
      console.log('登录用户和当前页面用户不是同一人')
      setHomepage(false)
      const user = await selectUserById(id as unknown as number)
      setUser(user.data)
      const param = {
        userId: currentUser?.id,
        columnId: column.id,
      }
      const type = await selectColumnTypeByUserIdAndColumnId(param)
      if (type.status === 20) {
        const data = type.data
        console.log(data.type)
        if (data.type === 2) {
          setFollowed(true)
        }
      } else {
        // 当前专栏未关注
        console.log(type)
      }
    }
  })

  return (
    <Card
      variant="outlined"
      sx={{ borderWidth: '0px 0px thin', borderRadius: 0, height: '160px' }}
    >
      <CardContent>
        <Grid container spacing={2}>
          {/*cover*/}
          <Grid item xs={12} md={3} lg={3}>
            <CardMedia
              component="img"
              height="120"
              image={column.cover}
              alt={column.cover}
              loading="lazy"
            />
          </Grid>
          {/*title, summary and actions*/}
          <Grid item xs={12} md={9} lg={9}>
            <Box
              sx={{
                width: '100%',
                display: 'flex',
                alignItems: 'center',
                flexWrap: 'wrap',
              }}
            >
              <Link
                href={`/column/${column.id}`}
                target="_blank"
                underline="none"
              >
                <Typography
                  variant="h6"
                  component="div"
                  fontWeight="500"
                  color="text.primary"
                >
                  {column.name}
                </Typography>
              </Link>
              {/*TODO*/}
              {homepage ? (
                <IconButton sx={{ marginLeft: 'auto' }}>
                  <MoreHorizOutlinedIcon />
                </IconButton>
              ) : followed ? (
                <Button
                  variant="contained"
                  size="small"
                  onClick={handleClick}
                  sx={{ marginLeft: 'auto' }}
                >
                  <CheckOutlinedIcon />
                  {'已关注'}
                </Button>
              ) : (
                <Button
                  variant="contained"
                  size="small"
                  onClick={handleClick}
                  sx={{ marginLeft: 'auto' }}
                >
                  <AddOutlinedIcon />
                  {'关注'}
                </Button>
              )}
            </Box>
            <Typography
              sx={{
                mb: 1.5,
                overflow: 'hidden',
                textOverflow: 'ellipsis',
                display: '-webkit-box',
                lineHeight: '24px',
                maxHeight: '48px',
              }}
              color="text.secondary"
            >
              {column.description}
            </Typography>
            <MetaList
              column={column}
              postsNum={postsNum}
              followNum={followNum}
            />
          </Grid>
        </Grid>
      </CardContent>
    </Card>
  )
}
