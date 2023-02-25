package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.UserColumnFollow;
import com.okito.okito.modules.users.model.entity.UserColumnFollowId;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:48
 */
public interface UserColumnFollowService {

  List<UserColumnFollow> selectAll();

  UserColumnFollow selectById(UserColumnFollowId id);

  boolean add(UserColumnFollow userColumnFollow);

  boolean update(UserColumnFollow userColumnFollow);

  boolean deleteById(UserColumnFollowId id);

}
