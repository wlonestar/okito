package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.model.view.UserView;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:55
 */
public interface UserService {

  List<UserView> selectAll();

  List<UserView> selectFollowingByUserId(Long userId);

  List<UserView> selectFollowerByUserId(Long userId);

  List<String> selectAllUsernames();

  List<String> selectAllEmails();

  User selectByEmailAndPassword(String email, String password);

  User selectById(Long id);

  UserView selectViewById(Long id);

  long countFollowTagsNumById(Long id);

  boolean add(User user);

  boolean update(User user);

}
