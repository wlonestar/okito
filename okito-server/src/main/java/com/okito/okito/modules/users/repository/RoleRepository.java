package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/9 20:36
 */
@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

  @Query(value = "select name from role", nativeQuery = true)
  List<String> findRoleNames();

}
