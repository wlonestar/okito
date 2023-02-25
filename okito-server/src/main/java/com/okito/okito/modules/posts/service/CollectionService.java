package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.Collection;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:37
 */
public interface CollectionService {

  List<Collection> selectAll();

  List<Collection> selectAllByAuthorId(Long authorId);

  List<Collection> selectAllByFollowerId(Long followerId);

  Collection selectById(Long id);

  long countByAuthorId(Long authorId);

  long countPostsByCollectionId(Long collectId);

  long countFollowNumByCollectionId(Long collectId);

  boolean add(Collection collection);

  boolean update(Collection collection);

  boolean deleteById(Long id);

}
