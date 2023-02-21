package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.entity.UserColumnFollow;
import com.okito.okito.modules.users.model.entity.UserColumnFollowId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:47
 */
@Repository
public interface UserColumnFollowRepository extends JpaRepository<UserColumnFollow, UserColumnFollowId> {

  @Query(value = "select new UserColumnFollow(u.id, u.follow) from UserColumnFollow u " +
      "where u.id.userId = ?1")
  List<UserColumnFollow> findAllByUserIdAndType(Long userId);

  @Query(value = "select new UserColumnFollow(u.id, u.follow) from UserColumnFollow u " +
      "where u.id.userId = ?1")
  Page<UserColumnFollow> findAllByUserIdAndType(Long userId, Pageable pageable);

  @Query(value = "select new UserColumnFollow(u.id, u.follow) from UserColumnFollow u " +
      "where u.id.columnId = ?1")
  List<UserColumnFollow> findAllByColumnIdAndType(Long columnId);

  @Query(value = "select new UserColumnFollow(u.id, u.follow) from UserColumnFollow u " +
      "where u.id.columnId = ?1")
  Page<UserColumnFollow> findAllByColumnIdAndType(Long columnId, Pageable pageable);

  @Query(value = "select count(*) from user_column_follow where column_id = ?1 and follow = true", nativeQuery = true)
  long countFollowByColumnId(Long columnId);

}
