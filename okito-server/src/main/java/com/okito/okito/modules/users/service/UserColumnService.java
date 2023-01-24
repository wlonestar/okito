package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.UserColumn;
import com.okito.okito.modules.users.model.entity.UserColumnId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:48
 */
public interface UserColumnService {

  List<UserColumn> selectAll();

  List<UserColumn> selectByUserIdAndType(Long userId, Short type);

  List<UserColumn> selectByColumnIdAndType(Long columnId, Short type);

  Page<UserColumn> selectAll(Pageable pageable);

  Page<UserColumn> selectByUserIdAndType(Long userId, Short type, Pageable pageable);

  Page<UserColumn> selectByColumnIdAndType(Long columnId, Short type, Pageable pageable);

  UserColumn selectById(UserColumnId id);

  boolean add(UserColumn userColumn);

  boolean update(UserColumn userColumn);

  boolean deleteById(UserColumnId id);

}
