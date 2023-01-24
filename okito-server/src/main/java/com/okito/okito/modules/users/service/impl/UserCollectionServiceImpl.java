package com.okito.okito.modules.users.service.impl;

import com.okito.okito.modules.users.model.entity.UserCollection;
import com.okito.okito.modules.users.model.entity.UserCollectionId;
import com.okito.okito.modules.users.repository.UserCollectionRepository;
import com.okito.okito.modules.users.service.UserCollectionService;
import jakarta.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 19:39
 */
@Service
public class UserCollectionServiceImpl implements UserCollectionService {

  @Resource
  private UserCollectionRepository userCollectionRepository;

  @Override
  public List<UserCollection> selectAll() {
    return userCollectionRepository.findAll();
  }

  @Override
  public List<UserCollection> selectByUserIdAndType(Long userId, Short type) {
    return userCollectionRepository.findAllByUserIdAndType(userId, type);
  }

  @Override
  public List<UserCollection> selectByCollectionIdAndType(Long collectionId, Short type) {
    return userCollectionRepository.findAllByCollectionIdAndType(collectionId, type);
  }

  @Override
  public Page<UserCollection> selectAll(Pageable pageable) {
    return userCollectionRepository.findAll(pageable);
  }

  @Override
  public Page<UserCollection> selectByUserIdAndType(Long userId, Short type, Pageable pageable) {
    return userCollectionRepository.findAllByUserIdAndType(userId, type, pageable);
  }

  @Override
  public Page<UserCollection> selectByCollectionIdAndType(Long collectionId, Short type, Pageable pageable) {
    return userCollectionRepository.findAllByCollectionIdAndType(collectionId, type, pageable);
  }

  @Override
  public UserCollection selectById(UserCollectionId id) {
    return userCollectionRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(UserCollection userCollection) {
    userCollectionRepository.save(userCollection);
    return false;
  }

  @Override
  public boolean update(UserCollection userCollection) {
    UserCollection collection = userCollectionRepository.findById(userCollection.getId()).orElse(null);
    if (!Objects.equals(collection, null)) {
      collection.setType(userCollection.getType());
      userCollectionRepository.save(collection);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(UserCollectionId id) {
    UserCollection collection = userCollectionRepository.findById(id).orElse(null);
    if (!Objects.equals(collection, null)) {
      userCollectionRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
