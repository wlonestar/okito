package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.Tag;
import com.okito.okito.modules.posts.model.view.TagView;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 13:00
 */
public interface TagService {

  List<TagView> selectAll();

  List<TagView> selectAllByPostId(Long postId);

  List<TagView> selectAllByFollowerId(Long followerId);

  Tag selectById(Long id);

  boolean add(Tag tag);

  boolean update(Tag tag);

  boolean deleteById(Long id);

}
