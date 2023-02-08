package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.PostTag;
import com.okito.okito.modules.posts.model.entity.PostTagId;
import com.okito.okito.modules.posts.model.view.PostView;
import com.okito.okito.modules.posts.model.view.TagView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 13:26
 */
@Repository
public interface PostTagRepository extends JpaRepository<PostTag, PostTagId> {

  @Query(value = "select new PostView(p.id, p.title, p.summary, p.cover, p.content, " +
      "p.createTime, p.updateTime, p.draft, p.cateId, p.authorId, p.viewNum, p.likeNum) " +
      "from PostView p where p.id in (select pt.id.postId from PostTag pt where pt.id.tagId = ?1)")
  List<PostView> findAllByTagId(Long tagId);

  @Query(value = "select new TagView(t.id, t.name, t.description, t.cover, t.followNum, t.postNum) " +
      "from TagView t where t.id in (select pt.id.tagId from PostTag pt where pt.id.postId = ?1)")
  List<TagView> findAllByPostId(Long postId);

  @Query(value = "select new PostView(p.id, p.title, p.summary, p.cover, p.content, " +
      "p.createTime, p.updateTime, p.draft, p.cateId, p.authorId, p.viewNum, p.likeNum) " +
      "from PostView p where p.id in (select pt.id.postId from PostTag pt where pt.id.tagId = ?1)")
  Page<PostView> findAllByTagId(Long tagId, Pageable pageable);

  @Query(value = "select new TagView(t.id, t.name, t.description, t.cover, t.followNum, t.postNum) " +
      "from TagView t where t.id in (select pt.id.tagId from PostTag pt where pt.id.postId = ?1)")
  Page<TagView> findAllByPostId(Long postId, Pageable pageable);

}
