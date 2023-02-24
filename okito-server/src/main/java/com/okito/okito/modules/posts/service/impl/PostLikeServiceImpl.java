package com.okito.okito.modules.posts.service.impl;

import com.okito.okito.modules.posts.model.entity.PostLike;
import com.okito.okito.modules.posts.model.entity.PostLikeId;
import com.okito.okito.modules.posts.repository.PostLikeRepository;
import com.okito.okito.modules.posts.service.PostLikeService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 14:50
 */
@Service
public class PostLikeServiceImpl implements PostLikeService {

  @Resource
  private PostLikeRepository postLikeRepository;

  @Override
  public List<PostLike> selectAll() {
    return postLikeRepository.findAll();
  }

  @Override
  public List<PostLike> selectAllByUserId(Long userId) {
    return postLikeRepository.findAllByUserId(userId);
  }

  @Override
  public PostLike selectById(PostLikeId id) {
    return postLikeRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(PostLike postLike) {
    postLikeRepository.save(postLike);
    return true;
  }

  @Override
  public boolean update(PostLike postLike) {
    PostLike newLike = postLikeRepository.findById(postLike.getId()).orElse(null);
    if (!Objects.equals(newLike, null)) {
      newLike.setType(postLike.getType());
      postLikeRepository.save(newLike);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(PostLikeId id) {
    PostLike postLike = postLikeRepository.findById(id).orElse(null);
    if (!Objects.equals(postLike, null)) {
      postLikeRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
