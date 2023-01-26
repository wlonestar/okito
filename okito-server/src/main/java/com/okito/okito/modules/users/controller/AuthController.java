package com.okito.okito.modules.users.controller;

import cn.dev33.satoken.stp.StpUtil;
import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.model.param.LoginParam;
import com.okito.okito.modules.users.model.param.RegisterParam;
import com.okito.okito.modules.users.service.UserService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * auth controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/9 20:21
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/auth")
public class AuthController {

  @Resource
  private UserService userService;

  /**
   * user login
   * TODO: can add login by username or email and password ?
   *
   * @param param login param
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "/login")
  public RespResult<?> login(@NonNull @RequestBody LoginParam param) {
    User user = userService.selectByUsernameAndPassword(param.getUsername(), param.getPassword());
    if (!Objects.equals(user, null)) {
      log.info("login userid: {}", user.getId());
      StpUtil.login(user.getId());
      String token = StpUtil.getTokenValue();
      log.info("{}", token);
      user.setToken(token);
      userService.update(user);
      return RespResult.success("login success");
    }
    return RespResult.fail(RespStatus.ERROR.getStatus(),
        "login failed, username or password incorrect");
  }

  /**
   * user register
   * TODO: before register should confirm captcha by email
   *
   * @param param register param
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "/register")
  public RespResult<?> register(@NonNull @RequestBody RegisterParam param) {
    boolean b = userService.selectAllUsernames().contains(param.getUsername())
        && userService.selectAllEmails().contains(param.getEmail());
    if (!b) {
      User user = new User();
      user.setUsername(param.getUsername());
      user.setPassword(param.getPassword());
      user.setEmail(param.getEmail());
      user.setAvatar(param.getAvatar());
      user.setJoinTime(param.getJoinTime());
      user.setRoleId(param.getRoleId());
      userService.add(user);
      return RespResult.success("register success");
    }
    return RespResult.fail(RespStatus.ERROR.getStatus(), "register failed, username or email exists");
  }

  /**
   * user logout
   *
   * @param token token
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "/logout")
  public RespResult<?> logout(@NonNull @RequestParam(name = "token") String token) {
    StpUtil.logoutByTokenValue(token);
    return RespResult.success("logout success");
  }

}
