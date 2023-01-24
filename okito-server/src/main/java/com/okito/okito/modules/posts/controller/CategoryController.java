package com.okito.okito.modules.posts.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.posts.model.entity.Category;
import com.okito.okito.modules.posts.service.CategoryService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * category controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:14
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/category")
public class CategoryController {

  @Resource
  private CategoryService categoryService;

  /**
   * select all categories
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(categoryService.selectAll());
  }

  /**
   * select all categories by page
   *
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page")
  public RespResult<?> selectAll(
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(categoryService.selectAll(pageable));
  }

  /**
   * select category by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{id}")
  public RespResult<?> selectById(@NonNull @PathVariable(name = "id") Long id) {
    Category category = categoryService.selectById(id);
    if (!Objects.equals(category, null)) {
      return RespResult.success(category);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a category
   *
   * @param category category
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody Category category) {
    categoryService.add(category);
    return RespResult.success();
  }

  /**
   * update category
   *
   * @param category category
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody Category category) {
    boolean flag = categoryService.update(category);
    if (flag) {
      return RespResult.success();
    } else {
      if (categoryService.selectAllNames().contains(category.getName())) {
        return RespResult.fail(RespStatus.FIELD_UNIQUE);
      }
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * delete category by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "/{id}")
  public RespResult<?> deleteById(@NonNull @PathVariable(name = "id") Long id) {
    boolean flag = categoryService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
