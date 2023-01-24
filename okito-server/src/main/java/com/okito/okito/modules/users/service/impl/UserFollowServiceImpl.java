package com.okito.okito.modules.users.service.impl;

import com.okito.okito.modules.users.model.entity.UserFollow;
import com.okito.okito.modules.users.model.entity.UserFollowId;
import com.okito.okito.modules.users.model.view.UserView;
import com.okito.okito.modules.users.repository.UserFollowRepository;
import com.okito.okito.modules.users.service.UserFollowService;
import jakarta.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 22:01
 */
@Service
public class UserFollowServiceImpl implements UserFollowService {

  @Resource
  private UserFollowRepository userFollowRepository;

  @Override
  public List<UserFollow> selectAll() {
    return userFollowRepository.findAll();
  }

  @Override
  public List<UserView> selectFollowersByUserId(Long userId) {
    return userFollowRepository.findFollowersByUserId(userId);
  }

  @Override
  public List<UserView> selectFollowedsByUserId(Long userId) {
    return userFollowRepository.findFollowedsByUserId(userId);
  }

  @Override
  public Page<UserFollow> selectAll(Pageable pageable) {
    return userFollowRepository.findAll(pageable);
  }

  @Override
  public Page<UserView> selectFollowersByUserId(Long userId, Pageable pageable) {
    return userFollowRepository.findFollowersByUserId(userId, pageable);
  }

  @Override
  public Page<UserView> selectFollowedsByUserId(Long userId, Pageable pageable) {
    return userFollowRepository.findFollowedsByUserId(userId, pageable);
  }

  @Override
  public UserFollow selectById(UserFollowId id) {
    return userFollowRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(UserFollow userFollow) {
    userFollowRepository.save(userFollow);
    return true;
  }

  @Override
  public boolean update(UserFollow userFollow) {
    UserFollow newUserFollow = userFollowRepository.findById(userFollow.getId()).orElse(null);
    if (!Objects.equals(newUserFollow, null)) {
      newUserFollow.setType(userFollow.getType());
      userFollowRepository.save(newUserFollow);
    } else {
      userFollowRepository.save(userFollow);
    }
    return true;
  }

  @Override
  public boolean deleteById(UserFollowId id) {
    UserFollow userFollow = userFollowRepository.findById(id).orElse(null);
    if (!Objects.equals(userFollow, null)) {
      userFollowRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
