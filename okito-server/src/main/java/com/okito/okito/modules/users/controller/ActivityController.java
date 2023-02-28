package com.okito.okito.modules.users.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.modules.users.model.entity.Activity;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.service.ActivityService;
import com.okito.okito.modules.users.service.UserService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * activity controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/22 22:24
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/activity")
public class ActivityController {

  @Resource
  private ActivityService activityService;

  @Resource
  private UserService userService;

  /**
   * select all activities
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(activityService.selectAll());
  }

  /**
   * select activities by user id
   *
   * @param userId user id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/user/{userId}")
  public RespResult<?> selectAllByUserId(@NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(activityService.selectAllByUserId(userId));
  }

  /**
   * add activity
   *
   * @param activity activity
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody Activity activity) {
    User user = userService.selectById(activity.getUserId());
    if (!Objects.equals(user, null)) {
      activityService.add(activity);
      return RespResult.success();
    }
    return RespResult.fail();
  }

}
