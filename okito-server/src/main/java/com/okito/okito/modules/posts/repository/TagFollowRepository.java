package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.TagFollow;
import com.okito.okito.modules.posts.model.entity.TagFollowId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 18:52
 */
@Repository
public interface TagFollowRepository extends JpaRepository<TagFollow, TagFollowId> {

  @Query(value = "select count(*) from tag_follow " +
      "where user_id = ?1 and follow = true", nativeQuery = true)
  long countAllByUserId(Long userId);

}
