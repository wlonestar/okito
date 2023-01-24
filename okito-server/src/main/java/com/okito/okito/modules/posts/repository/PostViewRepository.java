package com.okito.okito.modules.posts.repository;

import com.okito.okito.common.repository.ReadOnlyRepository;
import com.okito.okito.modules.posts.model.view.PostView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:00
 */
@Repository
public interface PostViewRepository extends ReadOnlyRepository<PostView, Long> {

  List<PostView> findAllByCateId(Long cateId);

  List<PostView> findAllByAuthorId(Long authorId);

  Page<PostView> findAllByCateId(Long cateId, Pageable pageable);

  Page<PostView> findAllByAuthorId(Long authorId, Pageable pageable);

}
