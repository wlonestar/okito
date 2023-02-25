package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.UserCollectionFollow;
import com.okito.okito.modules.users.model.entity.UserCollectionFollowId;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 19:39
 */
public interface UserCollectionFollowService {

  List<UserCollectionFollow> selectAll();

  UserCollectionFollow selectById(UserCollectionFollowId id);

  boolean add(UserCollectionFollow userCollectionFollow);

  boolean update(UserCollectionFollow userCollectionFollow);

  boolean deleteById(UserCollectionFollowId id);

}
