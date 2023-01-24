package com.okito.okito.modules.comments.repository;

import com.okito.okito.common.repository.ReadOnlyRepository;
import com.okito.okito.modules.comments.model.view.PinCommentView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 14:26
 */
@Repository
public interface PinCommentViewRepository extends ReadOnlyRepository<PinCommentView, Long> {

  List<PinCommentView> findAllByPinId(Long pinId);

  List<PinCommentView> findAllByAuthorId(Long authorId);

  List<PinCommentView> findAllByParentId(Long id);

  Page<PinCommentView> findAllByPinId(Long pinId, Pageable pageable);

  Page<PinCommentView> findAllByAuthorId(Long authorId, Pageable pageable);

  Page<PinCommentView> findAllByParentId(Long id, Pageable pageable);

}
