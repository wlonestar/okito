package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.Tag;
import com.okito.okito.modules.posts.model.view.TagView;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 12:59
 */
@Repository
public interface TagRepository extends JpaRepository<Tag, Long> {

  @Query(value = "select t.name from Tag t")
  List<String> findAllNames();

  @Query(value = "select t from TagView t where t.id in " +
      "(select tf.id.tagId from TagFollow tf where tf.id.userId = ?1 and tf.follow = true)")
  List<TagView> findAllByFollowerId(Long userId);

}
