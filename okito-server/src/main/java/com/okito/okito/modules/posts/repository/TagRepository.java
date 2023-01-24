package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 12:59
 */
@Repository
public interface TagRepository extends JpaRepository<Tag, Long> {

  @Query(value = "select name from tag", nativeQuery = true)
  List<String> findAllNames();

}
