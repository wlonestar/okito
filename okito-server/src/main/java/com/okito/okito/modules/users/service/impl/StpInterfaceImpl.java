package com.okito.okito.modules.users.service.impl;

import cn.dev33.satoken.stp.StpInterface;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.service.RoleService;
import com.okito.okito.modules.users.service.UserService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/9 20:45
 */
@Component
public class StpInterfaceImpl implements StpInterface {

  @Resource
  private UserService userService;

  @Resource
  private RoleService roleService;

  @Override
  public List<String> getPermissionList(Object loginId, String loginType) {
    return null;
  }

  @Override
  public List<String> getRoleList(Object loginId, String loginType) {
    User user = userService.selectById((Long) loginId);
    String name = roleService.selectById(user.getRoleId()).getName();
    return List.of(name);
  }

}
