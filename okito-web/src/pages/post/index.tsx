import React, { useState } from 'react'
import { useMount, useSort } from '../../utils'
import { useParams } from 'react-router-dom'
import { Box, Fab, Grid } from '@mui/material'
import { Post, defaultPost } from '../../types/post'
import {
  likeActionToPost,
  selectPostById,
  selectPostLikeById,
} from '../../api/post'
import { User, defaultUser } from '../../types/user'
import {
  selectUserById,
  selectUserFollowByUserIdAndFollowedId,
  updateUserFollow,
} from '../../api/user'
import { Category, defaultCategory } from '../../types/category'
import { Tag } from '../../types/tag'
import { selectCategoryById } from '../../api/category'
import { selectTagsByPostId } from '../../api/tag'
import { PostComment } from '../../types/post-comment'
import { selectPostCommentsByPostId } from '../../api/post-comment'
import Side from './side'
import Main from './main'
import KeyboardArrowUpOutlinedIcon from '@mui/icons-material/KeyboardArrowUpOutlined'

interface PostPageProps {
  currentUser: User | null
}

export default function PostPage({ currentUser }: PostPageProps) {
  const { id } = useParams()
  const [post, setPost] = useState<Post>(defaultPost)
  const [author, setAuthor] = useState<User>(defaultUser)
  const [cate, setCate] = useState<Category>(defaultCategory)
  const [tags, setTags] = useState<Tag[]>([])
  const [postComments, setPostComments] = useState<PostComment[]>([])
  const [likeType, setLikeType] = useState<number>(0)
  const [likeNum, setLikeNum] = useState<number>(post.likeNum)
  const [followed, setFollowed] = useState<boolean>(false)
  const [show, setShow] = useState<boolean>(false)
  const [scrollVisible, setScrollVisible] = useState<boolean>(true)

  const handleClickFollow = () => {
    if (currentUser !== null) {
      const param = {
        followerId: currentUser?.id,
        followedId: author.id,
        follow: !followed,
      }
      updateUserFollow(param).then((res) => {
        if (res.status === 20) {
          setFollowed(!followed)
        }
      })
    } else {
      window.location.assign('/login')
    }
  }

  const handleClickLike = () => {
    if (currentUser !== null) {
      let like = 0
      if (likeType === 0 || likeType === 2) {
        like = 1
        setLikeType(1)
        setLikeNum(likeNum + 1)
      } else if (likeType === 1) {
        setLikeType(0)
        setLikeNum(likeNum - 1)
      }
      const param = { postId: post.id, userId: currentUser.id, type: like }
      likeActionToPost(param).then((res) => {
        if (res.status !== 20) {
          console.log(res)
        }
      })
    } else {
      window.location.assign('/login')
    }
  }

  const scrollToTop = () => {
    window.scrollTo(0, 0)
  }

  useMount(async () => {
    const post = await selectPostById(id as unknown as number)
    setPost(post.data)
    const user = await selectUserById(post.data.authorId)
    setAuthor(user.data)
    const cate = await selectCategoryById(post.data.cateId)
    setCate(cate.data)
    const tags = await selectTagsByPostId(post.data.id)
    setTags(tags.data)

    if (currentUser !== null) {
      if (currentUser.id !== user.data.id) {
        setShow(true)
      }
      const like = await selectPostLikeById({
        postId: post.data.id,
        userId: currentUser.id,
      })
      if (like.status === 20) {
        setLikeType(like.data.type)
      }
      const follow = await selectUserFollowByUserIdAndFollowedId({
        followerId: currentUser.id,
        followedId: user.data.id,
      })
      if (follow.status === 20) {
        setFollowed(follow.data.follow)
      }
    }
    const postCommentsData = await selectPostCommentsByPostId(post.data.id)
    const postComments = postCommentsData.data.filter(
      (comment: PostComment) => comment.parentId === null
    )
    setPostComments(useSort(postComments, 'likeNum', 'desc'))
  })

  const toggleVisible = () => {
    const scrolled = document.documentElement.scrollTop
    if (scrolled > 300) {
      setScrollVisible(false)
    } else {
      setScrollVisible(true)
    }
  }

  window.addEventListener('scroll', toggleVisible)

  return (
    <Box>
      <Grid container sx={{ mt: 1, mb: 3 }}>
        <Grid item xs={12} md={9} sx={{ pl: 1.5, pr: 1.5, pt: 2.5 }}>
          <Main
            post={post}
            author={author}
            cate={cate}
            tags={tags}
            comments={postComments}
            currentUser={currentUser}
          />
        </Grid>
        <Grid item xs={12} md={3} sx={{ pl: 1.5, pr: 1.5, pt: 2.5 }}>
          <Side
            content={post.content}
            likeType={likeType}
            handleClickLike={handleClickLike}
            show={show}
            followed={followed}
            handleClickFollow={handleClickFollow}
            author={author}
            currentUser={currentUser}
          />
        </Grid>
      </Grid>
      <Box
        sx={{
          opacity: 1,
          transition: 'opacity 225ms cubic-bezier(0.4, 0, 0.2, 1) 0ms',
          position: 'fixed',
          bottom: '24px',
          right: '24px',
          zIndex: 10,
        }}
        hidden={scrollVisible}
      >
        <Fab size="small" color="primary" onClick={scrollToTop}>
          <KeyboardArrowUpOutlinedIcon />
        </Fab>
      </Box>
    </Box>
  )
}
