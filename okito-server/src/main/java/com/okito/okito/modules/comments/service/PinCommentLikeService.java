package com.okito.okito.modules.comments.service;

import com.okito.okito.modules.comments.model.entity.PinCommentLike;
import com.okito.okito.modules.comments.model.entity.PinCommentLikeId;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 22:41
 */
public interface PinCommentLikeService {

  List<PinCommentLike> selectAll();

  List<PinCommentLike> selectAllByUserId(Long userId);

  PinCommentLike selectById(PinCommentLikeId id);

  boolean add(PinCommentLike pinCommentLike);

  boolean update(PinCommentLike pinCommentLike);

  boolean deleteById(PinCommentLikeId id);

}
