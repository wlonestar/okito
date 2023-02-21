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

  @Query(value = "select id, name, cover, description, create_time, update_time, author_id from p_column " +
    "where id in (select column_id from user_column_follow where user_id = ?1 and follow = true)", nativeQuery = true)
  List<Column> findFollowByUserId(Long userId);

}