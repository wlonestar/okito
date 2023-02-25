package com.okito.okito.modules.users.service.impl;

import com.okito.okito.modules.users.model.entity.Role;
import com.okito.okito.modules.users.repository.RoleRepository;
import com.okito.okito.modules.users.service.RoleService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/9 20:37
 */
@Service
public class RoleServiceImpl implements RoleService {

  @Resource
  private RoleRepository roleRepository;

  @Override
  public List<Role> selectAll() {
    return roleRepository.findAll();
  }

  @Override
  public Role selectById(Long id) {
    return roleRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(Role role) {
    boolean contains = roleRepository.findRoleNames().contains(role.getName());
    if (!contains) {
      roleRepository.save(role);
      return true;
    }
    return false;
  }

  @Override
  public boolean update(Role role) {
    Role newRole = roleRepository.findById(role.getId()).orElse(null);
    if (!Objects.equals(newRole, null)) {
      if (!newRole.getName().equals(role.getName())) {
        boolean contains = roleRepository.findRoleNames().contains(role.getName());
        if (!contains) {
          roleRepository.save(newRole);
          return true;
        }
        return false;
      }
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(Long id) {
    Role role = roleRepository.findById(id).orElse(null);
    if (!Objects.equals(role, null)) {
      // TODO: delete users cascade
      roleRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
