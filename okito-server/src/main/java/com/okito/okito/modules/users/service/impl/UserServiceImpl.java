package com.okito.okito.modules.users.service.impl;

import com.okito.okito.modules.posts.repository.TagFollowRepository;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.model.view.UserView;
import com.okito.okito.modules.users.repository.UserRepository;
import com.okito.okito.modules.users.repository.UserViewRepository;
import com.okito.okito.modules.users.service.UserService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:56
 */
@Slf4j
@Service
public class UserServiceImpl implements UserService {

  @Resource
  private UserRepository userRepository;

  @Resource
  private UserViewRepository userViewRepository;

  @Resource
  private TagFollowRepository tagFollowRepository;

  @Override
  public List<UserView> selectAll() {
    return userViewRepository.findAll();
  }

  @Override
  public List<UserView> selectFollowingByUserId(Long userId) {
    return userViewRepository.findAllFollowingByUserId(userId);
  }

  @Override
  public List<UserView> selectFollowerByUserId(Long userId) {
    return userViewRepository.findAllFollowerByUserId(userId);
  }

  @Override
  public List<String> selectAllUsernames() {
    return userRepository.findUsernames();
  }

  @Override
  public List<String> selectAllEmails() {
    return userRepository.findEmails();
  }

  @Override
  public User selectByEmailAndPassword(String email, String password) {
    User user = userRepository.findUserByEmailAndPassword(email, password);
    return Objects.equals(user, null) ? null : user;
  }

  @Override
  public User selectById(Long id) {
    return userRepository.findById(id).orElse(null);
  }

  @Override
  public UserView selectViewById(Long id) {
    return userViewRepository.findById(id).orElse(null);
  }

  @Override
  public long countFollowTagsNumById(Long id) {
    return tagFollowRepository.countAllByUserId(id);
  }

  @Override
  public boolean add(User user) {
    userRepository.save(user);
    return true;
  }

  @Override
  public boolean update(User user) {
    User newUser = userRepository.findById(user.getId()).orElse(null);
    if (!Objects.equals(newUser, null)) {
      log.info("{}", newUser);
      newUser.setUsername(user.getUsername());
      newUser.setEmail(user.getEmail());
      newUser.setToken(user.getToken() == null ? newUser.getToken(): user.getToken());
      newUser.setAvatar(user.getAvatar());
      newUser.setBio(user.getBio());
      newUser.setHomepage(user.getHomepage());
      newUser.setIntro(user.getIntro());
      log.info("{}", newUser);
      userRepository.save(newUser);
      return true;
    }
    return false;
  }

}
