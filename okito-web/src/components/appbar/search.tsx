import React from 'react'
import { InputBase, Theme } from '@mui/material'
import { styled } from '@mui/material/styles'
import SearchOutlinedIcon from '@mui/icons-material/SearchOutlined'

const Search = styled('div')(({ theme }) => ({
  position: 'relative',
  borderRadius: theme.shape.borderRadius,
  backgroundColor: 'rgba(196, 196, 196, 0.15)',
  '&:hover': {
    backgroundColor: 'rgba(196, 196, 196, 0.25)',
  },
  marginRight: theme.spacing(2),
  marginLeft: 0,
  width: '100%',
  [theme.breakpoints.up('sm')]: {
    marginLeft: theme.spacing(3),
    width: 'auto',
  },
}))

const SearchIconWrapper = styled('div')(({ theme }) => ({
  padding: theme.spacing(0, 2),
  height: '100%',
  position: 'absolute',
  pointerEvents: 'none',
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'center',
}))

const StyledInputBase = styled(InputBase)(({ theme }) => ({
  color: 'inherit',
  '& .MuiInputBase-input': {
    padding: theme.spacing(1, 1, 1, 0),
    // vertical padding + font size from searchIcon
    paddingLeft: `calc(1em + ${theme.spacing(4)})`,
    transition: theme.transitions.create('width'),
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '20ch',
    },
  },
}))

interface CustomSearchProps {
  theme: Theme
}

export default function CustomSearch({ theme }: CustomSearchProps) {
  return (
    <Search>
      <SearchIconWrapper>
        <SearchOutlinedIcon />
      </SearchIconWrapper>
      <StyledInputBase
        theme={theme}
        placeholder="Search…"
        inputProps={{ 'aria-label': 'search' }}
      />
    </Search>
  )
}
