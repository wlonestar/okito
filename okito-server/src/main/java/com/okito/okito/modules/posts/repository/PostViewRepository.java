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

  @Query(value = "select * from post_view order by random() limit 100", nativeQuery = true)
  List<PostView> findRecommend100();

  @Query(value = "select * from post_view where create_time between now() - interval '72 HOURS' " +
      "and now() order by view_num desc limit 100", nativeQuery = true)
  List<PostView> findHot100();

  @Query(value = "select * from post_view " +
      "order by view_num + like_num desc limit 100", nativeQuery = true)
  List<PostView> findTop100();

  List<PostView> findAllByCateId(Long cateId);

  List<PostView> findAllByAuthorId(Long authorId);

  @Query(value = "select * from post_view p where p.id in " +
      "(select pc.post_id from post_collection pc where pc.collect_id = ?1)", nativeQuery = true)
  List<PostView> findAllByCollectionId(Long collectionId);

  @Query(value = "select * from post_view p where p.id in " +
      "(select pc.post_id from post_column pc where pc.column_id = ?1)", nativeQuery = true)
  List<PostView> findAllByColumnId(Long columnId);

  @Query(value = "select * from post_view p where p.id in " +
      "(select pt.post_id from post_tag pt where pt.tag_id = ?1)", nativeQuery = true)
  List<PostView> findAllByTagId(Long tagId);

  @Query(value = "select * from post_view p where p.author_id in " +
      "(select u.followed_id from user_follow u " +
      "where u.follower_id = ?1 and u.follow = true)", nativeQuery = true)
  List<PostView> findAllByUserFollowed(Long userId);

}
