package com.okito.okito.modules.posts.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.posts.model.entity.Column;
import com.okito.okito.modules.posts.service.ColumnService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * column controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/13 11:33
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/column")
public class ColumnController {

  @Resource
  private ColumnService columnService;

  /**
   * select all columns
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(columnService.selectAll());
  }

  /**
   * select followed columns by authorId
   *
   * @param authorId authorId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/author/{authorId}")
  public RespResult<?> selectAllByAuthorId(@NonNull @PathVariable(name = "authorId") Long authorId) {
    return RespResult.success(columnService.selectAllByAuthorId(authorId));
  }

  /**
   * select followed columns by follower id
   *
   * @param followerId followerId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/follower/{followerId}")
  public RespResult<?> selectAllFollowedByUserId(@NonNull @PathVariable(name = "followerId") Long followerId) {
    return RespResult.success(columnService.selectAllByFollowerId(followerId));
  }

  /**
   * select column by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{id}")
  public RespResult<?> selectById(@NonNull @PathVariable(name = "id") Long id) {
    Column column = columnService.selectById(id);
    if (!Objects.equals(column, null)) {
      return RespResult.success(column);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * count posts num by column id
   *
   * @param columnId column id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/count/post/{columnId}")
  public RespResult<?> countPostsByColumnId(@NonNull @PathVariable(name = "columnId") Long columnId) {
    return RespResult.success(columnService.countPostsByColumnId(columnId));
  }

  /**
   * count posts num by column id
   *
   * @param columnId column id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/count/follow/{columnId}")
  public RespResult<?> countFollowNumByColumnId(@NonNull @PathVariable(name = "columnId") Long columnId) {
    return RespResult.success(columnService.countFollowNumByColumnId(columnId));
  }

  /**
   * add a column
   *
   * @param column column
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody Column column) {
    columnService.add(column);
    return RespResult.success();
  }

  /**
   * update column
   *
   * @param column column
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody Column column) {
    boolean flag = columnService.update(column);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * delete column by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "/{id}")
  public RespResult<?> deleteById(@NonNull @PathVariable(name = "id") Long id) {
    boolean flag = columnService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
