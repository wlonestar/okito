package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.Column;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/13 11:32
 */
@Repository
public interface ColumnRepository extends JpaRepository<Column, Long> {

  List<Column> findAllByAuthorId(Long authorId);

  @Query(value = "select * from p_column c where c.id in " +
      "(select uc.column_id from user_column_follow uc " +
      "where uc.user_id = ?1 and uc.follow = true)", nativeQuery = true)
  List<Column> findAllByFollowerId(Long userId);

}
