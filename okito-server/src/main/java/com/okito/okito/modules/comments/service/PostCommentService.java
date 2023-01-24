package com.okito.okito.modules.comments.service;

import com.okito.okito.modules.comments.model.entity.PostComment;
import com.okito.okito.modules.comments.model.view.PostCommentView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

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

  Page<PostCommentView> selectAll(Pageable pageable);

  Page<PostCommentView> selectAllByPostId(Long postId, Pageable pageable);

  Page<PostCommentView> selectAllByAuthorId(Long authorId, Pageable pageable);

  Page<PostCommentView> selectSecondaryComments(Long id, Pageable pageable);

  PostCommentView selectById(Long id);

  boolean add(PostComment postComment);

  @Deprecated
  boolean update(PostComment postComment);

  boolean deleteById(Long id);

}
