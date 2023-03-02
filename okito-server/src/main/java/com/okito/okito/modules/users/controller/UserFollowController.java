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
   * select UserColumn by id
   *
   * @param followerId   userId
   * @param followedId columnId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/single")
  public RespResult<?> selectById(
    @NonNull @RequestParam(name = "followerId") Long followerId,
    @NonNull @RequestParam(name = "followedId") Long followedId) {
    UserFollowId id = new UserFollowId(followerId, followedId);
    UserFollow follow = userFollowService.selectById(id);
    if (!Objects.equals(follow, null)) {
      return RespResult.success(follow);
    }
    return RespResult.success(new UserFollow(id, false));
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
      userFollowService.add(new UserFollow(id, param.getFollow()));
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
    UserFollow follow = userFollowService.selectById(id);
    if (!Objects.equals(follow, null)) {
      follow.setFollow(param.getFollow());
      userFollowService.update(follow);
    } else {
      follow = new UserFollow(id, param.getFollow());
      userFollowService.add(follow);
    }
    return RespResult.success(follow);
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
