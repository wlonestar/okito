package com.okito.okito.modules.comments.service;

import com.okito.okito.modules.comments.model.entity.PostComment;
import com.okito.okito.modules.comments.model.view.PostCommentView;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 13:29
 */
public interface PostCommentService {

  List<PostCommentView> selectAll();

  List<PostCommentView> selectAllByPostId(Long postId);

  List<PostCommentView> selectAllByAuthorId(Long authorId);

  List<PostCommentView> selectSecondaryComments(Long id);

  PostCommentView selectById(Long id);

  long countByPostId(Long postId);

  boolean add(PostComment postComment);

  @Deprecated
  boolean update(PostComment postComment);

  boolean deleteById(Long id);

}
