package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.PostLike;
import com.okito.okito.modules.posts.model.entity.PostLikeId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 14:44
 */
@Repository
public interface PostLikeRepository extends JpaRepository<PostLike, PostLikeId> {

  @Query(value = "select p from PostLike p where p.id.userId = ?1")
  List<PostLike> findAllByUserId(Long userId);

  @Query(value = "select p from PostLike p where p.id.postId = ?1")
  List<PostLike> findAllByPostId(Long postId);

}
