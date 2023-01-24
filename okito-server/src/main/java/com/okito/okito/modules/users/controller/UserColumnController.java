package com.okito.okito.modules.users.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.users.model.entity.UserColumn;
import com.okito.okito.modules.users.model.entity.UserColumnId;
import com.okito.okito.modules.users.model.param.UserColumnParam;
import com.okito.okito.modules.users.service.UserColumnService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * user column controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:48
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/user/column")
public class UserColumnController {

  @Resource
  private UserColumnService userColumnService;

  /**
   * select all UserColumns
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(userColumnService.selectAll());
  }

  /**
   * select UserColumns by userId and type
   *
   * @param userId userId
   * @param type   column type
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{userId}")
  public RespResult<?> selectByUserIdAndType(
      @NonNull @PathVariable(name = "userId") Long userId, @NonNull @RequestParam(name = "type") Short type) {
    if (type > 0 && type < 4) {
      return RespResult.success(userColumnService.selectByUserIdAndType(userId, type));
    }
    return RespResult.fail(RespStatus.PARAM_ERROR);
  }

  /**
   * select UserColumns by columnId and type
   *
   * @param columnId columnId
   * @param type     column type
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{columnId}")
  public RespResult<?> selectByColumnIdAndType(
      @NonNull @PathVariable(name = "columnId") Long columnId,
      @NonNull @RequestParam(name = "type") Short type) {
    if (type > 0 && type < 4) {
      return RespResult.success(userColumnService.selectByColumnIdAndType(columnId, type));
    }
    return RespResult.fail(RespStatus.PARAM_ERROR);
  }

  /**
   * select all UserColumns by page
   *
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page")
  public RespResult<?> selectAll(
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(userColumnService.selectAll(pageable));
  }

  /**
   * select UserColumns by userId, type and page
   *
   * @param userId   userID
   * @param type     column type
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/{userId}")
  public RespResult<?> selectByUserIdAndType(
      @NonNull @PathVariable(name = "userId") Long userId, @NonNull @RequestParam(name = "type") Short type,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    if (type > 0 && type < 4) {
      return RespResult.success(userColumnService.selectByUserIdAndType(userId, type, pageable));
    }
    return RespResult.fail(RespStatus.PARAM_ERROR);
  }

  /**
   * select UserColumns by columnId, type and page
   *
   * @param columnId columnId
   * @param type     column type
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/{columnId}")
  public RespResult<?> selectByColumonIdAndType(
      @NonNull @PathVariable(name = "columnId") Long columnId, @NonNull @RequestParam(name = "type") Short type,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    if (type > 0 && type < 4) {
      return RespResult.success(userColumnService.selectByColumnIdAndType(columnId, type, pageable));
    }
    return RespResult.fail(RespStatus.PARAM_ERROR);
  }

  /**
   * select UserColumn by id
   *
   * @param userId   userId
   * @param columnId columnId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/single")
  public RespResult<?> selectById(
      @NonNull @RequestParam(name = "userId") Long userId,
      @NonNull @RequestParam(name = "columnId") Long columnId) {
    UserColumnId id = new UserColumnId(userId, columnId);
    UserColumn collection = userColumnService.selectById(id);
    if (!Objects.equals(collection, null)) {
      return RespResult.success(collection);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a UserColumn
   *
   * @param param UserColumnParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody UserColumnParam param) {
    UserColumnId id = new UserColumnId(param.getUserId(), param.getColumnId());
    UserColumn collection = userColumnService.selectById(id);
    if (!Objects.equals(collection, null)) {
      userColumnService.add(new UserColumn(id, param.getType()));
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.ALREADY_EXIST);
  }

  /**
   * update UserColumn
   *
   * @param param UserColumnParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody UserColumnParam param) {
    UserColumnId id = new UserColumnId(param.getUserId(), param.getColumnId());
    UserColumn collection = userColumnService.selectById(id);
    if (!Objects.equals(collection, null)) {
      collection.setType(param.getType());
      userColumnService.update(collection);
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * delete UserColumn by id
   *
   * @param userId   userId
   * @param columnId columnId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "")
  public RespResult<?> deleteById(
      @NonNull @RequestParam(name = "userId") Long userId,
      @NonNull @RequestParam(name = "columnId") Long columnId) {
    UserColumnId id = new UserColumnId(userId, columnId);
    boolean flag = userColumnService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}