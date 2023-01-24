package com.okito.okito.modules.comments.repository;

import com.okito.okito.modules.comments.model.entity.PostComment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 13:29
 */
@Repository
public interface PostCommentRepository extends JpaRepository<PostComment, Long> {

  List<PostComment> findAllByParentId(Long id);

}
