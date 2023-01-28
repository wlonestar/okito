package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.model.view.UserView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:55
 */
public interface UserService {

  List<UserView> selectAll();

  List<UserView> selectAllByTagId(Long tagId);

  List<String> selectAllUsernames();

  List<String> selectAllEmails();

  Page<UserView> selectAll(Pageable pageable);

  Page<UserView> selectAllByTagId(Long tagId, Pageable pageable);

  User selectByUsernameAndPassword(String username, String password);

  User selectByEmailAndPassword(String email, String password);

  User selectById(Long id);

  boolean add(User user);

  boolean update(User user);

}
