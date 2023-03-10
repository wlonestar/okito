package com.okito.okito.modules.users.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.model.param.UserParam;
import com.okito.okito.modules.users.model.view.UserView;
import com.okito.okito.modules.users.service.UserService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * user controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/31 20:04
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/user")
public class UserController {

  @Resource
  private UserService userService;

  /**
   * select following users by user id
   *
   * @param userId user id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/following/{userId}")
  public RespResult<?> selectAllFollowingByUserId(
      @NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(userService.selectFollowingByUserId(userId));
  }

  /**
   * select followers by user id
   *
   * @param userId user id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/follower/{userId}")
  public RespResult<?> selectAllFollowerByUserId(
      @NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(userService.selectFollowerByUserId(userId));
  }

  /**
   * select user by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{id}")
  public RespResult<?> selectById(@NonNull @PathVariable(name = "id") Long id) {
    UserView user = userService.selectViewById(id);
    if (!Objects.equals(user, null)) {
      return RespResult.success(user);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * count follow tags num by user id
   *
   * @param userId user id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/count/tag/{userId}")
  public RespResult<?> countFollowTagsNum(@NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(userService.countFollowTagsNumById(userId));
  }

  /**
   * check the request email exists
   *
   * @param email email
   * @return boolean
   */
  @RequestMapping(method = RequestMethod.GET, path = "/check/email")
  public RespResult<?> checkEmailExists(@NonNull @RequestParam(name = "email") String email) {
    boolean contains = userService.selectAllEmails().contains(email);
    return RespResult.success(contains);
  }

  /**
   * check the request username exists
   *
   * @param username username
   * @return boolean
   */
  @RequestMapping(method = RequestMethod.GET, path = "/check/username")
  public RespResult<?> checkUsernameExists(
      @NonNull @RequestParam(name = "username") String username) {
    boolean contains = userService.selectAllUsernames().contains(username);
    return RespResult.success(contains);
  }

  /**
   * update user
   *
   * @param param user param
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody UserParam param) {
    User user = User.builder()
        .id(param.getId())
        .username(param.getUsername())
        .email(param.getEmail())
        .avatar(param.getAvatar())
        .bio(param.getBio())
        .homepage(param.getHomepage())
        .intro(param.getIntro())
        .build();
    boolean flag = userService.update(user);
    if (flag) {
      return RespResult.success(user);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
