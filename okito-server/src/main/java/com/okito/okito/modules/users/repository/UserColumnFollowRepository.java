package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.entity.UserColumnFollow;
import com.okito.okito.modules.users.model.entity.UserColumnFollowId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:47
 */
@Repository
public interface UserColumnFollowRepository
    extends JpaRepository<UserColumnFollow, UserColumnFollowId> {

  @Query(value = "select count(*) from user_column_follow " +
      "where column_id = ?1 and follow = true", nativeQuery = true)
  long countFollowNumByColumnId(Long columnId);

}
