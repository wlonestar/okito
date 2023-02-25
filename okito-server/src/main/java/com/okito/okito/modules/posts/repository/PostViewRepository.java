package com.okito.okito.modules.posts.repository;

import com.okito.okito.common.repository.ReadOnlyRepository;
import com.okito.okito.modules.posts.model.view.PostView;
import org.springframework.data.jpa.repository.Query;
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

  @Query(value = "select new PostView(p.id, p.title, p.summary, p.cover, p.content, " +
    "p.createTime, p.updateTime, p.draft, p.cateId, p.authorId, p.viewNum, p.likeNum) " +
    "from PostView p where p.id in (select pc.id.postId from PostCollection pc where pc.id.collectId = ?1)")
  List<PostView> findAllByCollectionId(Long collectionId);

  @Query(value = "select new PostView(p.id, p.title, p.summary, p.cover, p.content, " +
    "p.createTime, p.updateTime, p.draft, p.cateId, p.authorId, p.viewNum, p.likeNum) " +
    "from PostView p where p.id in (select pc.id.postId from PostColumn pc where pc.id.columnId = ?1)")
  List<PostView> findAllByColumnId(Long columnId);

  @Query(value = "select new PostView(p.id, p.title, p.summary, p.cover, p.content, " +
    "p.createTime, p.updateTime, p.draft, p.cateId, p.authorId, p.viewNum, p.likeNum) " +
    "from PostView p where p.id in (select pt.id.postId from PostTag pt where pt.id.tagId = ?1)")
  List<PostView> findAllByTagId(Long tagId);

}
