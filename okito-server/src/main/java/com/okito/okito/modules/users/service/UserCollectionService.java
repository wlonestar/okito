package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.UserCollection;
import com.okito.okito.modules.users.model.entity.UserCollectionId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 19:39
 */
public interface UserCollectionService {

  List<UserCollection> selectAll();

  List<UserCollection> selectByUserIdAndType(Long userId, Short type);

  List<UserCollection> selectByCollectionIdAndType(Long collectionId, Short type);

  Page<UserCollection> selectAll(Pageable pageable);

  Page<UserCollection> selectByUserIdAndType(Long userId, Short type, Pageable pageable);

  Page<UserCollection> selectByCollectionIdAndType(Long collectionId, Short type, Pageable pageable);

  UserCollection selectById(UserCollectionId id);

  boolean add(UserCollection userCollection);

  boolean update(UserCollection userCollection);

  boolean deleteById(UserCollectionId id);

}
