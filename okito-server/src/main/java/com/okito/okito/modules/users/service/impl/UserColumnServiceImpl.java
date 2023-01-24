package com.okito.okito.modules.users.service.impl;

import com.okito.okito.modules.users.model.entity.UserColumn;
import com.okito.okito.modules.users.model.entity.UserColumnId;
import com.okito.okito.modules.users.repository.UserColumnRepository;
import com.okito.okito.modules.users.service.UserColumnService;
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
public class UserColumnServiceImpl implements UserColumnService {

  @Resource
  private UserColumnRepository userColumnRepository;

  @Override
  public List<UserColumn> selectAll() {
    return userColumnRepository.findAll();
  }

  @Override
  public List<UserColumn> selectByUserIdAndType(Long userId, Short type) {
    return userColumnRepository.findAllByUserIdAndType(userId, type);
  }

  @Override
  public List<UserColumn> selectByColumnIdAndType(Long columnId, Short type) {
    return userColumnRepository.findAllByColumnIdAndType(columnId, type);
  }

  @Override
  public Page<UserColumn> selectAll(Pageable pageable) {
    return userColumnRepository.findAll(pageable);
  }

  @Override
  public Page<UserColumn> selectByUserIdAndType(Long userId, Short type, Pageable pageable) {
    return userColumnRepository.findAllByUserIdAndType(userId, type, pageable);
  }

  @Override
  public Page<UserColumn> selectByColumnIdAndType(Long columnId, Short type, Pageable pageable) {
    return userColumnRepository.findAllByColumnIdAndType(columnId, type, pageable);
  }

  @Override
  public UserColumn selectById(UserColumnId id) {
    return userColumnRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(UserColumn userColumn) {
    userColumnRepository.save(userColumn);
    return false;
  }

  @Override
  public boolean update(UserColumn userColumn) {
    UserColumn collection = userColumnRepository.findById(userColumn.getId()).orElse(null);
    if (!Objects.equals(collection, null)) {
      collection.setType(userColumn.getType());
      userColumnRepository.save(collection);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(UserColumnId id) {
    UserColumn collection = userColumnRepository.findById(id).orElse(null);
    if (!Objects.equals(collection, null)) {
      userColumnRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
