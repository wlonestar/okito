import React, { useState } from 'react'
import { useMount, useSort } from '../../utils'
import { useParams } from 'react-router-dom'
import { Grid } from '@mui/material'
import { Post, postDefault } from '../../types/post'
import { selectPostById } from '../../api/post'
import { User, userDefault } from '../../types/user'
import { selectUserById } from '../../api/user'
import { Category, categoryDefault } from '../../types/category'
import { Tag } from '../../types/tag'
import { selectCategoryById } from '../../api/category'
import { selectTagsByPostId } from '../../api/tag'
import { PostComment } from '../../types/post-comment'
import { selectPostCommentsByPostId } from '../../api/post-comment'
import { CurrentUserProps } from '../../types/current-user-props'
import Side from './side'
import Main from './main'

export default function PostPage({ currentUser }: CurrentUserProps) {
  const { id } = useParams()
  const [post, setPost] = useState<Post>(postDefault)
  const [author, setAuthor] = useState<User>(userDefault)
  const [cate, setCate] = useState<Category>(categoryDefault)
  const [tags, setTags] = useState<Tag[]>([])
  const [postComments, setPostComments] = useState<PostComment[]>([])

  useMount(async () => {
    console.log(id)
    const post = await selectPostById(id as unknown as number)
    setPost(post.data)
    const user = await selectUserById(post.data.authorId)
    setAuthor(user.data)
    const cate = await selectCategoryById(post.data.cateId)
    setCate(cate.data)
    const tags = await selectTagsByPostId(post.data.id)
    setTags(tags.data)
    const postCommentsData = await selectPostCommentsByPostId(post.data.id)
    const postComments = postCommentsData.data.filter(
      (comment: PostComment) => comment.parentId === null
    )
    setPostComments(useSort(postComments, 'likeNum', 'desc'))
  })

  return (
    <Grid container spacing={3} sx={{ mt: 1, mb: 3 }}>
      <Grid item xs={12} md={9}>
        <Main
          post={post}
          author={author}
          cate={cate}
          tags={tags}
          comments={postComments}
          currentUser={currentUser}
        />
      </Grid>
      <Grid item xs={12} md={3}>
        <Side author={author} currentUser={currentUser} />
      </Grid>
    </Grid>
  )
}
