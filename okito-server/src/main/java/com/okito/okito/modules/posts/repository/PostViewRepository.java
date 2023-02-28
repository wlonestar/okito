package com.okito.okito.modules.posts.repository;

import com.okito.okito.common.repository.ReadOnlyRepository;
import com.okito.okito.modules.posts.model.view.PostView;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:00
 */
@Repository
public interface PostViewRepository extends ReadOnlyRepository<PostView, Long> {

  @Query(value = "select p from PostView p order by random() limit 100")
  List<PostView> findRecommend100();

  List<PostView> findAllByCateId(Long cateId);

  List<PostView> findAllByAuthorId(Long authorId);

  @Query(value = "select p from PostView p where p.id in " +
    "(select pc.id.postId from PostCollection pc where pc.id.collectId = ?1)")
  List<PostView> findAllByCollectionId(Long collectionId);

  @Query(value = "select p from PostView p where p.id in " +
    "(select pc.id.postId from PostColumn pc where pc.id.columnId = ?1)")
  List<PostView> findAllByColumnId(Long columnId);

  @Query(value = "select p from PostView p where p.id in " +
    "(select pt.id.postId from PostTag pt where pt.id.tagId = ?1)")
  List<PostView> findAllByTagId(Long tagId);

  @Query(value = "select p from PostView p where p.authorId in " +
    "(select u.id.followedId from UserFollow u where u.id.followerId = ?1 and u.follow = true)")
  List<PostView> findAllByUserFollowed(Long userId);

}
