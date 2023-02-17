package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.UserColumnFollow;
import com.okito.okito.modules.users.model.entity.UserColumnFollowId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:48
 */
public interface UserColumnFollowService {

  List<UserColumnFollow> selectAll();

  List<UserColumnFollow> selectByUserIdAndType(Long userId, Boolean follow);

  List<UserColumnFollow> selectByColumnIdAndType(Long columnId, Boolean follow);

  Page<UserColumnFollow> selectAll(Pageable pageable);

  Page<UserColumnFollow> selectByUserIdAndType(Long userId, Boolean follow, Pageable pageable);

  Page<UserColumnFollow> selectByColumnIdAndType(Long columnId, Boolean follow, Pageable pageable);

  UserColumnFollow selectById(UserColumnFollowId id);

  boolean add(UserColumnFollow userColumnFollow);

  boolean update(UserColumnFollow userColumnFollow);

  boolean deleteById(UserColumnFollowId id);

}
