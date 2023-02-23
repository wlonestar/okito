package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.entity.UserCollectionFollow;
import com.okito.okito.modules.users.model.entity.UserCollectionFollowId;
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
public interface UserCollectionFollowRepository extends JpaRepository<UserCollectionFollow, UserCollectionFollowId> {

  @Query(value = "select new UserCollectionFollow(u.id, u.follow) from UserCollectionFollow u " +
      "where u.id.userId = ?1 and u.follow = ?2")
  List<UserCollectionFollow> findAllByUserIdAndType(Long userId, Boolean follow);

  @Query(value = "select new UserCollectionFollow(u.id, u.follow) from UserCollectionFollow u " +
      "where u.id.userId = ?1 and u.follow = ?2")
  Page<UserCollectionFollow> findAllByUserIdAndType(Long userId, Boolean follow, Pageable pageable);

  @Query(value = "select new UserCollectionFollow(u.id, u.follow) from UserCollectionFollow u " +
      "where u.id.collectId = ?1 and u.follow = ?2")
  List<UserCollectionFollow> findAllByCollectionIdAndType(Long collectionId, Boolean follow);

  @Query(value = "select new UserCollectionFollow(u.id, u.follow) from UserCollectionFollow u " +
      "where u.id.collectId = ?1 and u.follow = ?2")
  Page<UserCollectionFollow> findAllByCollectionIdAndType(Long collectionId, Boolean follow, Pageable pageable);

  @Query(value = "select count(*) from user_collection_follow where collect_id = ?1 and follow = true", nativeQuery = true)
  long countFollowByCollectionId(Long collectionId);

}
