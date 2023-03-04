package com.okito.okito.modules.users.service.impl;

import com.okito.okito.modules.users.model.entity.UserCollectionFollow;
import com.okito.okito.modules.users.model.entity.UserCollectionFollowId;
import com.okito.okito.modules.users.repository.UserCollectionFollowRepository;
import com.okito.okito.modules.users.service.UserCollectionFollowService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 19:39
 */
@Service
public class UserCollectionFollowServiceImpl implements UserCollectionFollowService {

  @Resource
  private UserCollectionFollowRepository userCollectionFollowRepository;

  @Override
  public List<UserCollectionFollow> selectAll() {
    return userCollectionFollowRepository.findAll();
  }

  @Override
  public UserCollectionFollow selectById(UserCollectionFollowId id) {
    return userCollectionFollowRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(UserCollectionFollow userCollectionFollow) {
    userCollectionFollowRepository.save(userCollectionFollow);
    return false;
  }

  @Override
  public boolean update(UserCollectionFollow userCollectionFollow) {
    UserCollectionFollow collection = userCollectionFollowRepository
        .findById(userCollectionFollow.getId()).orElse(null);
    if (!Objects.equals(collection, null)) {
      collection.setFollow(userCollectionFollow.getFollow());
      userCollectionFollowRepository.save(collection);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(UserCollectionFollowId id) {
    UserCollectionFollow collection = userCollectionFollowRepository.findById(id).orElse(null);
    if (!Objects.equals(collection, null)) {
      userCollectionFollowRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
