package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.UserFollow;
import com.okito.okito.modules.users.model.entity.UserFollowId;
import com.okito.okito.modules.users.model.view.UserView;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 22:00
 */
public interface UserFollowService {

  List<UserFollow> selectAll();

  List<UserView> selectFollowersByUserId(Long userId);

  List<UserView> selectFollowedsByUserId(Long userId);

  UserFollow selectById(UserFollowId id);

  boolean add(UserFollow userFollow);

  boolean update(UserFollow userFollow);

  boolean deleteById(UserFollowId id);

}
