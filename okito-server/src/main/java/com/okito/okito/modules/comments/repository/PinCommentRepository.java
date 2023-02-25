package com.okito.okito.modules.comments.repository;

import com.okito.okito.modules.comments.model.entity.PinComment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:49
 */
@Repository
public interface PinCommentRepository extends JpaRepository<PinComment, Long> {

  long countByPinId(Long pinId);

  List<PinComment> findAllByParentId(Long id);

}
