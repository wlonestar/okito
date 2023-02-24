package com.okito.okito.modules.posts.service.impl;

import com.okito.okito.modules.posts.model.entity.Category;
import com.okito.okito.modules.posts.repository.CategoryRepository;
import com.okito.okito.modules.posts.service.CategoryService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:03
 */
@Service
public class CategoryServiceImpl implements CategoryService {

  @Resource
  private CategoryRepository categoryRepository;

  @Override
  public List<Category> selectAll() {
    return categoryRepository.findAll();
  }

  @Override
  public List<String> selectAllNames() {
    return categoryRepository.findAllNames();
  }

  @Override
  public Category selectById(Long id) {
    return categoryRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(Category category) {
    if (!categoryRepository.findAllNames().contains(category.getName())) {
      categoryRepository.save(category);
      return true;
    }
    return false;
  }

  @Override
  public boolean update(Category category) {
    Category newCategory = categoryRepository.findById(category.getId()).orElse(null);
    if (!Objects.equals(newCategory, null)) {
      // not modify category name
      if (newCategory.getName().equals(category.getName())) {
        newCategory.setCover(category.getCover());
        newCategory.setDescription(category.getDescription());
        categoryRepository.save(newCategory);
        return true;
      } else {
        // category name not exists
        if (!categoryRepository.findAllNames().contains(category.getName())) {
          newCategory.setName(category.getName());
          newCategory.setCover(category.getCover());
          newCategory.setDescription(category.getDescription());
          categoryRepository.save(newCategory);
          return true;
        }
        return false;
      }
    }
    return false;
  }

  @Override
  public boolean deleteById(Long id) {
    Category category = categoryRepository.findById(id).orElse(null);
    if (!Objects.equals(category, null)) {
      categoryRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
