package com.okito.okito.modules.comments.service;

import com.okito.okito.modules.comments.model.entity.PinCommentLike;
import com.okito.okito.modules.comments.model.entity.PinCommentLikeId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 22:41
 */
public interface PinCommentLikeService {

  List<PinCommentLike> selectAll();

  List<PinCommentLike> selectAllByUserId(Long userId);

  Page<PinCommentLike> selectAll(Pageable pageable);

  Page<PinCommentLike> selectAllByUserId(Long userId, Pageable pageable);

  PinCommentLike selectById(PinCommentLikeId id);

  boolean add(PinCommentLike pinCommentLike);

  boolean update(PinCommentLike pinCommentLike);

  boolean deleteById(PinCommentLikeId id);

}
