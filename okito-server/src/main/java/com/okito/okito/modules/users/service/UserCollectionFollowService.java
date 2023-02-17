package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.UserCollectionFollow;
import com.okito.okito.modules.users.model.entity.UserCollectionFollowId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 19:39
 */
public interface UserCollectionFollowService {

  List<UserCollectionFollow> selectAll();

  List<UserCollectionFollow> selectByUserIdAndType(Long userId, Boolean follow);

  List<UserCollectionFollow> selectByCollectionIdAndType(Long collectionId, Boolean follow);

  Page<UserCollectionFollow> selectAll(Pageable pageable);

  Page<UserCollectionFollow> selectByUserIdAndType(Long userId, Boolean follow, Pageable pageable);

  Page<UserCollectionFollow> selectByCollectionIdAndType(Long collectionId, Boolean follow, Pageable pageable);

  UserCollectionFollow selectById(UserCollectionFollowId id);

  boolean add(UserCollectionFollow userCollectionFollow);

  boolean update(UserCollectionFollow userCollectionFollow);

  boolean deleteById(UserCollectionFollowId id);

}
