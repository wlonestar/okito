package com.okito.okito.modules.comments.repository;

import com.okito.okito.modules.comments.model.view.PostCommentView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 15:09
 */
@Repository
public interface PostCommentViewRepository extends JpaRepository<PostCommentView, Long> {

  List<PostCommentView> findAllByPostId(Long postId);

  List<PostCommentView> findAllByAuthorId(Long authorId);

  List<PostCommentView> findAllByParentId(Long id);

  Page<PostCommentView> findAllByPostId(Long postId, Pageable pageable);

  Page<PostCommentView> findAllByAuthorId(Long authorId, Pageable pageable);

  Page<PostCommentView> findAllByParentId(Long id, Pageable pageable);

}
