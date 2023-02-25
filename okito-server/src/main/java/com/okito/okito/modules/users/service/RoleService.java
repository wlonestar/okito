package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.Role;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/9 20:37
 */
public interface RoleService {

  List<Role> selectAll();

  Role selectById(Long id);

  boolean add(Role role);

  boolean update(Role role);

  boolean deleteById(Long id);

}
