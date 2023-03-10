package com.okito.okito.modules.users.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.users.model.entity.UserColumnFollow;
import com.okito.okito.modules.users.model.entity.UserColumnFollowId;
import com.okito.okito.modules.users.model.param.UserColumnFollowParam;
import com.okito.okito.modules.users.service.UserColumnFollowService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
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
public class UserColumnFollowController {

  @Resource
  private UserColumnFollowService userColumnFollowService;

  /**
   * select all UserColumns
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(userColumnFollowService.selectAll());
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
    UserColumnFollowId id = new UserColumnFollowId(userId, columnId);
    UserColumnFollow collection = userColumnFollowService.selectById(id);
    if (!Objects.equals(collection, null)) {
      return RespResult.success(collection);
    }
    return RespResult.success(new UserColumnFollow(id, false));
  }

  /**
   * add a UserColumn
   *
   * @param param UserColumnParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody UserColumnFollowParam param) {
    UserColumnFollowId id = new UserColumnFollowId(param.getUserId(), param.getColumnId());
    UserColumnFollow collection = userColumnFollowService.selectById(id);
    if (!Objects.equals(collection, null)) {
      userColumnFollowService.add(new UserColumnFollow(id, param.getFollow()));
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
  public RespResult<?> update(@NonNull @RequestBody UserColumnFollowParam param) {
    UserColumnFollowId id = new UserColumnFollowId(param.getUserId(), param.getColumnId());
    UserColumnFollow column = userColumnFollowService.selectById(id);
    if (!Objects.equals(column, null)) {
      column.setFollow(param.getFollow());
      userColumnFollowService.update(column);
    } else {
      column = new UserColumnFollow(id, param.getFollow());
      userColumnFollowService.add(column);
    }
    return RespResult.success(column);
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
    UserColumnFollowId id = new UserColumnFollowId(userId, columnId);
    boolean flag = userColumnFollowService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
