package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.entity.UserColumn;
import com.okito.okito.modules.users.model.entity.UserColumnId;
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
public interface UserColumnRepository extends JpaRepository<UserColumn, UserColumnId> {

  @Query(value = "select new UserColumn(u.id, u.type) from UserColumn u " +
      "where u.id.userId = ?1 and u.type = ?2")
  List<UserColumn> findAllByUserIdAndType(Long userId, Short type);

  @Query(value = "select new UserColumn(u.id, u.type) from UserColumn u " +
      "where u.id.userId = ?1 and u.type = ?2")
  Page<UserColumn> findAllByUserIdAndType(Long userId, Short type, Pageable pageable);

  @Query(value = "select new UserColumn(u.id, u.type) from UserColumn u " +
      "where u.id.columnId = ?1 and u.type = ?2")
  List<UserColumn> findAllByColumnIdAndType(Long columnId, Short type);

  @Query(value = "select new UserColumn(u.id, u.type) from UserColumn u " +
      "where u.id.columnId = ?1 and u.type = ?2")
  Page<UserColumn> findAllByColumnIdAndType(Long columnId, Short type, Pageable pageable);

  @Query(value = "select count(*) from user_column where column_id = ?1 and type = 2", nativeQuery = true)
  long countFollowByColumnId(Long columnId);

}
