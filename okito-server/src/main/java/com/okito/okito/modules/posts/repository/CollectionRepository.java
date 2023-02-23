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

  @Query(value = "select new Collection(c.id, c.name, c.cover, c.description, c.createTime, c.updateTime, c.authorId) " +
    "from Collection c where c.id in (select uc.id.collectId from UserCollectionFollow uc where uc.id.userId = ?1 and uc.follow = true)")
  List<Collection> findAllByFollowerId(Long followerId);

  long countAllByAuthorId(Long authorId);

}
