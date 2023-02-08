package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.PostColumn;
import com.okito.okito.modules.posts.model.entity.PostColumnId;
import com.okito.okito.modules.posts.model.view.PostView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 14:27
 */
@Repository
public interface PostColumnRepository extends JpaRepository<PostColumn, PostColumnId> {

  @Query(value = "select new PostView(p.id, p.title, p.summary, p.cover, p.content, " +
      "p.createTime, p.updateTime, p.draft, p.cateId, p.authorId, p.viewNum, p.likeNum) " +
      "from PostView p where p.id in (select pc.id.postId from PostColumn pc where pc.id.columnId = ?1)")
  List<PostView> findAllByColumnId(Long columnId);

  @Query(value = "select new PostView(p.id, p.title, p.summary, p.cover, p.content, " +
      "p.createTime, p.updateTime, p.draft, p.cateId, p.authorId, p.viewNum, p.likeNum) " +
      "from PostView p where p.id in (select pc.id.postId from PostColumn pc where pc.id.columnId = ?1)")
  Page<PostView> findAllByColumnId(Long columnId, Pageable pageable);

}
