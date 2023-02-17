package com.okito.okito.modules.users.service.impl;

import com.okito.okito.modules.users.model.entity.UserColumnFollow;
import com.okito.okito.modules.users.model.entity.UserColumnFollowId;
import com.okito.okito.modules.users.repository.UserColumnFollowRepository;
import com.okito.okito.modules.users.service.UserColumnFollowService;
import jakarta.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:48
 */
@Service
public class UserColumnFollowServiceImpl implements UserColumnFollowService {

  @Resource
  private UserColumnFollowRepository userColumnFollowRepository;

  @Override
  public List<UserColumnFollow> selectAll() {
    return userColumnFollowRepository.findAll();
  }

  @Override
  public List<UserColumnFollow> selectByUserIdAndType(Long userId, Boolean follow) {
    return userColumnFollowRepository.findAllByUserIdAndType(userId, follow);
  }

  @Override
  public List<UserColumnFollow> selectByColumnIdAndType(Long columnId, Boolean follow) {
    return userColumnFollowRepository.findAllByColumnIdAndType(columnId, follow);
  }

  @Override
  public Page<UserColumnFollow> selectAll(Pageable pageable) {
    return userColumnFollowRepository.findAll(pageable);
  }

  @Override
  public Page<UserColumnFollow> selectByUserIdAndType(Long userId, Boolean follow, Pageable pageable) {
    return userColumnFollowRepository.findAllByUserIdAndType(userId, follow, pageable);
  }

  @Override
  public Page<UserColumnFollow> selectByColumnIdAndType(Long columnId, Boolean follow, Pageable pageable) {
    return userColumnFollowRepository.findAllByColumnIdAndType(columnId, follow, pageable);
  }

  @Override
  public UserColumnFollow selectById(UserColumnFollowId id) {
    return userColumnFollowRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(UserColumnFollow userColumnFollow) {
    userColumnFollowRepository.save(userColumnFollow);
    return false;
  }

  @Override
  public boolean update(UserColumnFollow userColumnFollow) {
    UserColumnFollow collection = userColumnFollowRepository.findById(userColumnFollow.getId()).orElse(null);
    if (!Objects.equals(collection, null)) {
      collection.setFollow(userColumnFollow.getFollow());
      userColumnFollowRepository.save(collection);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(UserColumnFollowId id) {
    UserColumnFollow collection = userColumnFollowRepository.findById(id).orElse(null);
    if (!Objects.equals(collection, null)) {
      userColumnFollowRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
