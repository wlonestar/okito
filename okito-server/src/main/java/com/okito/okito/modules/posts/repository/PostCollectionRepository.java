package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.PostCollection;
import com.okito.okito.modules.posts.model.entity.PostCollectionId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 14:15
 */
@Repository
public interface PostCollectionRepository extends JpaRepository<PostCollection, PostCollectionId> {

  @Query(value = "select count(*) from post_collection " +
      "where collect_id = ?1 and follow = true", nativeQuery = true)
  long countByCollectionId(Long collectionId);

}
