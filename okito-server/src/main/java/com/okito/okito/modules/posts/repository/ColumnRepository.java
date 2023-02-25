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

  @Query(value = "select new Column(c.id, c.name, c.cover, c.description, c.createTime, c.updateTime, c.authorId) from Column c " +
    "where c.id in (select uc.id.columnId from UserColumnFollow uc where uc.id.userId = ?1 and uc.follow = true)")
  List<Column> findAllByFollowerId(Long userId);

}
