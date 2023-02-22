package com.okito.okito.modules.comments.service.impl;

import com.okito.okito.modules.comments.model.entity.PinComment;
import com.okito.okito.modules.comments.model.entity.PinCommentLike;
import com.okito.okito.modules.comments.model.entity.PinCommentLikeId;
import com.okito.okito.modules.comments.repository.PinCommentLikeRepository;
import com.okito.okito.modules.comments.repository.PinCommentRepository;
import com.okito.okito.modules.comments.service.PinCommentLikeService;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.repository.UserRepository;
import jakarta.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 22:43
 */
@Service
public class PinCommentLikeServiceImpl implements PinCommentLikeService {

  @Resource
  private PinCommentLikeRepository pinCommentLikeRepository;

  @Resource
  private PinCommentRepository pinCommentRepository;

  @Resource
  private UserRepository userRepository;

  @Override
  public List<PinCommentLike> selectAll() {
    return pinCommentLikeRepository.findAll();
  }

  @Override
  public List<PinCommentLike> selectAllByUserId(Long userId) {
    return pinCommentLikeRepository.findAllByUserId(userId);
  }

  @Override
  public Page<PinCommentLike> selectAll(Pageable pageable) {
    return pinCommentLikeRepository.findAll(pageable);
  }

  @Override
  public Page<PinCommentLike> selectAllByUserId(Long userId, Pageable pageable) {
    return pinCommentLikeRepository.findAllByUserIdAndPage(userId, pageable);
  }

  @Override
  public PinCommentLike selectById(PinCommentLikeId id) {
    return pinCommentLikeRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(PinCommentLike pinCommentLike) {
    PinComment comment = pinCommentRepository.findById(pinCommentLike.getId().getCommentId()).orElse(null);
    User user = userRepository.findById(pinCommentLike.getId().getUserId()).orElse(null);
    boolean flag = !Objects.equals(comment, null) && !Objects.equals(user, null);
    if (flag) {
      pinCommentLikeRepository.save(pinCommentLike);
      return true;
    }
    return false;
  }

  @Override
  public boolean update(PinCommentLike pinCommentLike) {
    PinCommentLike newCommentLike = pinCommentLikeRepository.findById(pinCommentLike.getId()).orElse(null);
    if (!Objects.equals(newCommentLike, null)) {
      newCommentLike.setType(pinCommentLike.getType());
      pinCommentLikeRepository.save(newCommentLike);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(PinCommentLikeId id) {
    PinCommentLike pinCommentLike = pinCommentLikeRepository.findById(id).orElse(null);
    if (!Objects.equals(pinCommentLike, null)) {
      pinCommentLikeRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
