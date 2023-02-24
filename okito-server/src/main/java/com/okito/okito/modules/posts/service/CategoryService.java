package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.Category;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:03
 */
public interface CategoryService {

  List<Category> selectAll();

  List<String> selectAllNames();

  Category selectById(Long id);

  boolean add(Category category);

  boolean update(Category category);

  boolean deleteById(Long id);

}
