package com.okito.okito.modules.users.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.model.view.UserView;
import com.okito.okito.modules.users.service.UserService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
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

}
