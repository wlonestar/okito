package com.okito.okito.modules.posts.service.impl;

import com.okito.okito.modules.posts.model.entity.Column;
import com.okito.okito.modules.posts.repository.ColumnRepository;
import com.okito.okito.modules.posts.repository.PostColumnRepository;
import com.okito.okito.modules.posts.service.ColumnService;
import com.okito.okito.modules.users.repository.UserColumnFollowRepository;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/13 11:32
 */
@Slf4j
@Service
public class ColumnServiceImpl implements ColumnService {

  @Resource
  private ColumnRepository columnRepository;

  @Resource
  private PostColumnRepository postColumnRepository;

  @Resource
  private UserColumnFollowRepository userColumnFollowRepository;

  @Override
  public List<Column> selectAll() {
    return columnRepository.findAll();
  }

  @Override
  public List<Column> selectAllByAuthorId(Long authorId) {
    return columnRepository.findAllByAuthorId(authorId);
  }

  @Override
  public List<Column> selectAllByFollowerId(Long userId) {
    return columnRepository.findAllByFollowerId(userId);
  }

  @Override
  public Page<Column> selectAll(Pageable pageable) {
    return columnRepository.findAll(pageable);
  }

  @Override
  public Column selectById(Long id) {
    return columnRepository.findById(id).orElse(null);
  }

  @Override
  public long countPostsByColumnId(Long columnId) {
    return postColumnRepository.countByColumnId(columnId);
  }

  @Override
  public long countFollowByColumnId(Long columnId) {
    return userColumnFollowRepository.countFollowByColumnId(columnId);
  }

  @Override
  public boolean add(Column column) {
    columnRepository.save(column);
    return true;
  }

  @Override
  public boolean update(Column column) {
    Column newColumn = columnRepository.findById(column.getId()).orElse(null);
    if (!Objects.equals(newColumn, null)) {
      newColumn.setName(column.getName());
      newColumn.setDescription(column.getDescription());
      newColumn.setCover(column.getCover());
      newColumn.setCreateTime(column.getCreateTime());
      newColumn.setUpdateTime(column.getUpdateTime());
      columnRepository.save(newColumn);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(Long id) {
    Column column = columnRepository.findById(id).orElse(null);
    if (!Objects.equals(column, null)) {
      columnRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
