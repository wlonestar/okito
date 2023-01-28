import { Box, Collapse, List, Typography } from '@mui/material'
import DatasetIcon from '@mui/icons-material/Dataset'
import { CustomListItem } from '../list-items'

export const NavList = () => {
  return (
    <List
      sx={{
        listStyle: 'none',
        margin: 0,
        padding: 0,
        marginTop: '4px',
        marginBottom: '4px',
      }}
    >
      <li style={{ display: 'block', padding: '8px 10px 0px 10px' }}>
        <Typography
          component="a"
          variant="inherit"
          sx={{
            margin: 0,
            textDecoration: 'none',
            alignItems: 'center',
            fontSize: '0.875rem',
            lineHeight: 1.5,
            fontWeight: 500,
            display: 'flex',
            justifyContent: 'flex-start',
            paddingLeft: '2px',
            color: '#1A2017',
          }}
        >
          <Box
            component="span"
            sx={{
              display: 'flex',
              alignItems: 'center',
              height: '100%',
              marginRight: '12px',
              paddingTop: '2px',
              paddingBottom: '2px',
            }}
          >
            <DatasetIcon
              sx={{
                userSelect: 'none',
                width: '1em',
                height: '1em',
                display: 'inline-block',
                fill: 'currentColor',
                flexShrink: 0,
                color: 'rgba(0, 0, 0, 0.54)',
              }}
            />
          </Box>
          tables
        </Typography>
        <Collapse
          component="div"
          in={true}
          sx={{
            height: 'auto',
            overflow: 'visible',
            transition: 'height 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms',
          }}
        >
          <List
            component="ul"
            sx={{
              listStyle: 'none',
              position: 'relative',
              padding: 0,
              margin: '4px 0',
              color: 'rgb(26, 32, 39)',
            }}
          >
            <CustomListItem title={'category'} />
            <CustomListItem title={'collection'} />
            <CustomListItem title={'column'} />
            <CustomListItem title={'pin'} />
            <CustomListItem title={'post'} />
            <CustomListItem title={'role'} />
            <CustomListItem title={'user'} />
            <CustomListItem title={'tag'} />
          </List>
        </Collapse>
      </li>
    </List>
  )
}
