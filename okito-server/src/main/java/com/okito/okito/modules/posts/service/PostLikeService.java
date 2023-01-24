package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.PostLike;
import com.okito.okito.modules.posts.model.entity.PostLikeId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 14:50
 */
public interface PostLikeService {

  List<PostLike> selectAll();

  List<PostLike> selectAllByUserId(Long userId);

  Page<PostLike> selectAll(Pageable pageable);

  Page<PostLike> selectAllByUserId(Long userId, Pageable pageable);

  PostLike selectById(PostLikeId id);

  boolean add(PostLike postLike);

  boolean update(PostLike postLike);

  boolean deleteById(PostLikeId id);

}
