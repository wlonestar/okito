package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:01
 */
@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

  @Query(value = "select name from category", nativeQuery = true)
  List<String> findAllNames();

}
