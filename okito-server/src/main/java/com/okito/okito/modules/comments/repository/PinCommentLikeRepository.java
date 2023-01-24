package com.okito.okito.modules.comments.repository;

import com.okito.okito.modules.comments.model.entity.PinCommentLike;
import com.okito.okito.modules.comments.model.entity.PinCommentLikeId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
public interface PinCommentLikeRepository extends JpaRepository<PinCommentLike, PinCommentLikeId> {

  @Query(value = "select p.id.commentId, p.id.userId, p.type from PinCommentLike p where p.id.userId = ?1")
  List<PinCommentLike> findAllByUserId(Long userId);

  @Query(value = "select p.id.commentId, p.id.userId, p.type from PinCommentLike p where p.id.commentId = ?1")
  List<PinCommentLike> findAllByCommentId(Long commentId);

  @Query(value = "select p.id.commentId, p.id.userId, p.type from PinCommentLike p where p.id.userId = ?1")
  Page<PinCommentLike> findAllByUserIdAndPage(Long userId, Pageable pageable);

}
