package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.Column;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/13 11:32
 */
public interface ColumnService {

  List<Column> selectAll();

  List<Column> selectAllByUserIdAndType(Long userId, Boolean follow);

  Page<Column> selectAll(Pageable pageable);

  Column selectById(Long id);

  long countPostsByColumnId(Long columnId);

  long countFollowByColumnId(Long columnId);

  boolean add(Column column);

  boolean update(Column column);

  boolean deleteById(Long id);

}
