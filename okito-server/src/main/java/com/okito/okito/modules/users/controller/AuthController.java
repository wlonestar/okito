package com.okito.okito.modules.users.controller;

import cn.dev33.satoken.stp.StpUtil;
import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.model.param.LoginParam;
import com.okito.okito.modules.users.model.param.RegisterParam;
import com.okito.okito.modules.users.model.view.UserView;
import com.okito.okito.modules.users.service.UserService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

import static com.okito.okito.common.constant.consts.GlobalConsts.*;

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
   *
   * @param param login param
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "/login")
  public RespResult<?> login(@NonNull @RequestBody LoginParam param) {
    String password = param.getPassword();
    User user = userService.selectByEmailAndPassword(param.getEmail(), password);
    String device = param.getDevice();
    if (!Objects.equals(user, null)) {
      log.info("login userid: {}", user.getId());
      StpUtil.login(user.getId(), device);
      String token = StpUtil.getTokenValue();
      log.info("{}", token);
      user.setToken(token);
      userService.update(user);
      UserView userView = userService.selectViewById(user.getId());
      return RespResult.success(userView);
    }
    return RespResult.fail(RespStatus.ERROR.getStatus(), "login failed, email or password incorrect");
  }

  /**
   * user register
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
      user.setAvatar(defaultAvatar);
      user.setJoinTime(defaultTime);
      user.setRoleId(defaultRoleId);
      userService.add(user);
      return RespResult.success(user);
    }
    return RespResult.fail(RespStatus.ERROR.getStatus(), "register failed, username or email exists");
  }

  /**
   * check login stata
   *
   * @param tokenValue tokenValue
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/check")
  public RespResult<?> checkLogin(@NonNull @RequestParam(name = "tokenValue") String tokenValue) {
    Long id = Long.parseLong((String) StpUtil.getLoginIdByToken(tokenValue));
    User user = userService.selectById(id);
    return RespResult.success(user);
  }

  /**
   * user logout
   *
   * @param device device
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "/logout")
  public RespResult<?> logout(@NonNull @RequestBody String device) {
    StpUtil.logout(StpUtil.getLoginId(), device);
    return RespResult.success("logout success");
  }

}
