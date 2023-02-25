package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.Column;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/13 11:32
 */
public interface ColumnService {

  List<Column> selectAll();

  List<Column> selectAllByAuthorId(Long authorId);

  List<Column> selectAllByFollowerId(Long userId);

  Column selectById(Long id);

  long countPostsByColumnId(Long columnId);

  long countFollowNumByColumnId(Long columnId);

  boolean add(Column column);

  boolean update(Column column);

  boolean deleteById(Long id);

}
