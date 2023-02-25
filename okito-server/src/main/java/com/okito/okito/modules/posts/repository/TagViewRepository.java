package com.okito.okito.modules.posts.repository;

import com.okito.okito.common.repository.ReadOnlyRepository;
import com.okito.okito.modules.posts.model.view.TagView;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 13:22
 */
public interface TagViewRepository extends ReadOnlyRepository<TagView, Long> {

  @Query(value = "select new TagView(t.id, t.name, t.description, t.cover, t.followNum, t.postNum) " +
    "from TagView t where t.id in (select pt.id.tagId from PostTag pt where pt.id.postId = ?1)")
  List<TagView> findAllByPostId(Long postId);

}
