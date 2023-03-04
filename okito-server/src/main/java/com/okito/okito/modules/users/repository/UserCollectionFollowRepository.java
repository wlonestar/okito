package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.entity.UserCollectionFollow;
import com.okito.okito.modules.users.model.entity.UserCollectionFollowId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 19:37
 */
@Repository
public interface UserCollectionFollowRepository
    extends JpaRepository<UserCollectionFollow, UserCollectionFollowId> {

  @Query(value = "select count(*) from user_collection_follow " +
      "where collect_id = ?1 and follow = true", nativeQuery = true)
  long countFollowNumByCollectionId(Long collectionId);

}
