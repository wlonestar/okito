package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.PostLike;
import com.okito.okito.modules.posts.model.entity.PostLikeId;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 14:50
 */
public interface PostLikeService {

  List<PostLike> selectAll();

  List<PostLike> selectAllByUserId(Long userId);

  PostLike selectById(PostLikeId id);

  boolean add(PostLike postLike);

  boolean update(PostLike postLike);

  boolean deleteById(PostLikeId id);

}
