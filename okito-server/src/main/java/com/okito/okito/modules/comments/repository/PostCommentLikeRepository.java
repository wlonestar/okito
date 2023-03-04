package com.okito.okito.modules.comments.repository;

import com.okito.okito.modules.comments.model.entity.PostCommentLike;
import com.okito.okito.modules.comments.model.entity.PostCommentLikeId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 22:46
 */
@Repository
public interface PostCommentLikeRepository
    extends JpaRepository<PostCommentLike, PostCommentLikeId> {

  @Query(value = "select * from post_comment_like where user_id = ?1", nativeQuery = true)
  List<PostCommentLike> findAllByUserId(Long userId);

  @Query(value = "select * from post_comment_like where comment_id = ?1", nativeQuery = true)
  List<PostCommentLike> findAllByCommentId(Long commentId);

}
