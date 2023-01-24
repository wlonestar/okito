package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.entity.UserCollection;
import com.okito.okito.modules.users.model.entity.UserCollectionId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 19:37
 */
@Repository
public interface UserCollectionRepository extends JpaRepository<UserCollection, UserCollectionId> {

  @Query(value = "select new UserCollection(u.id, u.type) from UserCollection u " +
      "where u.id.userId = ?1 and u.type = ?2")
  List<UserCollection> findAllByUserIdAndType(Long userId, Short type);

  @Query(value = "select new UserCollection(u.id, u.type) from UserCollection u " +
      "where u.id.userId = ?1 and u.type = ?2")
  Page<UserCollection> findAllByUserIdAndType(Long userId, Short type, Pageable pageable);

  @Query(value = "select new UserCollection(u.id, u.type) from UserCollection u " +
      "where u.id.collectId = ?1 and u.type = ?2")
  List<UserCollection> findAllByCollectionIdAndType(Long collectionId, Short type);

  @Query(value = "select new UserCollection(u.id, u.type) from UserCollection u " +
      "where u.id.collectId = ?1 and u.type = ?2")
  Page<UserCollection> findAllByCollectionIdAndType(Long collectionId, Short type, Pageable pageable);

}
