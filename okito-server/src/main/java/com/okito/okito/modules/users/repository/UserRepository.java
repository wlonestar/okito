package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:55
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {

  @Query(value = "select u.username from User u")
  List<String> findUsernames();

  @Query(value = "select u.email from User u")
  List<String> findEmails();

  User findUserByEmailAndPassword(String email, String password);

}
