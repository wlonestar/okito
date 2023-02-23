package com.okito.okito.modules.users.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.users.model.entity.UserFollow;
import com.okito.okito.modules.users.model.entity.UserFollowId;
import com.okito.okito.modules.users.model.param.UserFollowParam;
import com.okito.okito.modules.users.service.UserFollowService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * user follow controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/18 22:41
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/user/follow")
public class UserFollowController {

  @Resource
  private UserFollowService userFollowService;

  /**
   * select all userFollows
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(userFollowService.selectAll());
  }

  /**
   * select followers by userId
   *
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/follower/{userId}")
  public RespResult<?> selectFollowersByUserId(@NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(userFollowService.selectFollowersByUserId(userId));
  }

  /**
   * select followeds by userId
   *
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/followed/{userId}")
  public RespResult<?> selectFollowedsByUserId(@NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(userFollowService.selectFollowedsByUserId(userId));
  }

  /**
   * select all userFollows by page
   *
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page")
  public RespResult<?> selectAll(
      @NonNull @PageableDefault(sort = "type", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(userFollowService.selectAll(pageable));
  }

  /**
   * select followers by userId and page
   *
   * @param userId   userId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/follower/{userId}")
  public RespResult<?> selectFollowersByUserId(
      @NonNull @PathVariable(name = "userId") Long userId,
      @NonNull @PageableDefault(sort = "type", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(userFollowService.selectFollowersByUserId(userId, pageable));
  }

  /**
   * select followeds by userId and page
   *
   * @param userId   userId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/followed/{userId}")
  public RespResult<?> selectFollowedsByUserId(
      @NonNull @PathVariable(name = "userId") Long userId,
      @NonNull @PageableDefault(sort = "type", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(userFollowService.selectFollowedsByUserId(userId, pageable));
  }

  /**
   * add userFollow
   *
   * @param param userFollowParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody UserFollowParam param) {
    UserFollowId id = new UserFollowId(param.getFollowerId(), param.getFollowedId());
    UserFollow userFollow = userFollowService.selectById(id);
    if (!Objects.equals(userFollow, null)) {
      userFollowService.add(new UserFollow(id, param.getType()));
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.ALREADY_EXIST);
  }

  /**
   * update userFollow
   *
   * @param param userFollowParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody UserFollowParam param) {
    UserFollowId id = new UserFollowId(param.getFollowerId(), param.getFollowedId());
    UserFollow userFollow = userFollowService.selectById(id);
    if (!Objects.equals(userFollow, null)) {
      userFollow.setFollow(param.getType());
      userFollowService.update(userFollow);
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * delete userFollow by id
   *
   * @param followerId followerId
   * @param followedId followedId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "")
  public RespResult<?> deleteById(
      @NonNull @RequestParam(name = "followerId") Long followerId,
      @NonNull @RequestParam(name = "followedId") Long followedId) {
    UserFollowId id = new UserFollowId(followerId, followedId);
    boolean flag = userFollowService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
