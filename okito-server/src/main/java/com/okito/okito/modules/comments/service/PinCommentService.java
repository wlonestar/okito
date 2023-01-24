package com.okito.okito.modules.comments.service;

import com.okito.okito.modules.comments.model.entity.PinComment;
import com.okito.okito.modules.comments.model.view.PinCommentView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:50
 */
public interface PinCommentService {

  List<PinCommentView> selectAll();

  List<PinCommentView> selectAllByPinId(Long pinId);

  List<PinCommentView> selectAllByAuthorId(Long authorId);

  List<PinCommentView> selectSecondaryComments(Long id);

  Page<PinCommentView> selectAll(Pageable pageable);

  Page<PinCommentView> selectAllByPinId(Long pinId, Pageable pageable);

  Page<PinCommentView> selectAllByAuthorId(Long authorId, Pageable pageable);

  Page<PinCommentView> selectSecondaryComments(Long id, Pageable pageable);

  PinCommentView selectById(Long id);

  boolean add(PinComment pinComment);

  @Deprecated
  boolean update(PinComment pinComment);

  boolean deleteById(Long id);

}
