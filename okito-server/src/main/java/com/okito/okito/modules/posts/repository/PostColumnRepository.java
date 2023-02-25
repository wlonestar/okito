package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.PostColumn;
import com.okito.okito.modules.posts.model.entity.PostColumnId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 14:27
 */
@Repository
public interface PostColumnRepository extends JpaRepository<PostColumn, PostColumnId> {

  @Query(value = "select count(*) from post_column where column_id = ?1", nativeQuery = true)
  long countByColumnId(Long columnId);

}
