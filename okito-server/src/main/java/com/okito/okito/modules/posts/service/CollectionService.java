package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.Collection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:37
 */
public interface CollectionService {

  List<Collection> selectAll();

  Page<Collection> selectAll(Pageable pageable);

  Collection selectById(Long id);

  boolean add(Collection collection);

  boolean update(Collection collection);

  boolean deleteById(Long id);

}
