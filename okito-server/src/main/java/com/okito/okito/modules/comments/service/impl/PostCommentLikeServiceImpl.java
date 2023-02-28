package com.okito.okito.modules.comments.service.impl;

import com.okito.okito.modules.comments.model.entity.PostComment;
import com.okito.okito.modules.comments.model.entity.PostCommentLike;
import com.okito.okito.modules.comments.model.entity.PostCommentLikeId;
import com.okito.okito.modules.comments.repository.PostCommentLikeRepository;
import com.okito.okito.modules.comments.repository.PostCommentRepository;
import com.okito.okito.modules.comments.service.PostCommentLikeService;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.repository.UserRepository;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 22:43
 */
@Service
public class PostCommentLikeServiceImpl implements PostCommentLikeService {

  @Resource
  private PostCommentLikeRepository postCommentLikeRepository;

  @Resource
  private PostCommentRepository postCommentRepository;

  @Resource
  private UserRepository userRepository;

  @Override
  public List<PostCommentLike> selectAll() {
    return postCommentLikeRepository.findAll();
  }

  @Override
  public List<PostCommentLike> selectAllByUserId(Long userId) {
    return postCommentLikeRepository.findAllByUserId(userId);
  }

  @Override
  public PostCommentLike selectById(PostCommentLikeId id) {
    return postCommentLikeRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(PostCommentLike postCommentLike) {
    PostComment comment = postCommentRepository.findById(postCommentLike.getId().getCommentId()).orElse(null);
    User user = userRepository.findById(postCommentLike.getId().getUserId()).orElse(null);
    boolean flag = !Objects.equals(comment, null) && !Objects.equals(user, null);
    if (flag) {
      postCommentLikeRepository.save(postCommentLike);
      return true;
    }
    return false;
  }

  @Override
  public boolean update(PostCommentLike postCommentLike) {
    PostCommentLike newCommentLike = postCommentLikeRepository.findById(postCommentLike.getId()).orElse(null);
    if (!Objects.equals(newCommentLike, null)) {
      newCommentLike.setType(postCommentLike.getType());
      postCommentLikeRepository.save(newCommentLike);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(PostCommentLikeId id) {
    PostCommentLike pinCommentLike = postCommentLikeRepository.findById(id).orElse(null);
    if (!Objects.equals(pinCommentLike, null)) {
      postCommentLikeRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
