package com.okito.okito.modules.comments.service;

import com.okito.okito.modules.comments.model.entity.PostCommentLike;
import com.okito.okito.modules.comments.model.entity.PostCommentLikeId;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 22:41
 */
public interface PostCommentLikeService {

  List<PostCommentLike> selectAll();

  List<PostCommentLike> selectAllByUserId(Long userId);

  PostCommentLike selectById(PostCommentLikeId id);

  boolean add(PostCommentLike postCommentLike);

  boolean update(PostCommentLike postCommentLike);

  boolean deleteById(PostCommentLikeId id);

}
