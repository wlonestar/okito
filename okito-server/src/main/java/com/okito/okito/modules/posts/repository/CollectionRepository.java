package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.Collection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:36
 */
@Repository
public interface CollectionRepository extends JpaRepository<Collection, Long> {

  List<Collection> findAllByAuthorId(Long authorId);

  @Query(value = "select * from collection c where c.id in " +
    "(select uc.collect_id from user_collection_follow uc " +
    "where uc.user_id = ?1 and uc.follow = true)", nativeQuery = true)
  List<Collection> findAllByFollowerId(Long followerId);

  long countAllByAuthorId(Long authorId);

}
