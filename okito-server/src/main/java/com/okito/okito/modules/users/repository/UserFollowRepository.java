package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.entity.UserFollow;
import com.okito.okito.modules.users.model.entity.UserFollowId;
import com.okito.okito.modules.users.model.view.UserView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:59
 */
@Repository
public interface UserFollowRepository extends JpaRepository<UserFollow, UserFollowId> {

  @Query(value = "select new UserView (u.id, u.username, u.password, u.email, u.avatar, u.bio, u.homepage, " +
      "u.intro, u.joinTime, u.followerNum, u.followedNum, u.postLikeNum) from UserView  u where u.id in " +
      "(select uf.id.followerId from UserFollow uf where uf.follow = 1 and uf.id.followedId = ?1)")
  List<UserView> findFollowersByUserId(Long userId);

  @Query(value = "select new UserView (u.id, u.username, u.password, u.email, u.avatar, u.bio, u.homepage, " +
      "u.intro, u.joinTime, u.followerNum, u.followedNum, u.postLikeNum) from UserView  u where u.id in " +
      "(select uf.id.followerId from UserFollow uf where uf.follow = 1 and uf.id.followedId = ?1)")
  Page<UserView> findFollowersByUserId(Long userId, Pageable pageable);

  @Query(value = "select new UserView (u.id, u.username, u.password, u.email, u.avatar, u.bio, u.homepage, " +
      "u.intro, u.joinTime, u.followerNum, u.followedNum, u.postLikeNum) from UserView  u where u.id in " +
      "(select uf.id.followedId from UserFollow uf where uf.follow = 1 and uf.id.followerId = ?1)")
  List<UserView> findFollowedsByUserId(Long userId);

  @Query(value = "select new UserView (u.id, u.username, u.password, u.email, u.avatar, u.bio, u.homepage, " +
      "u.intro, u.joinTime, u.followerNum, u.followedNum, u.postLikeNum) from UserView  u where u.id in " +
      "(select uf.id.followedId from UserFollow uf where uf.follow = 1 and uf.id.followerId = ?1)")
  Page<UserView> findFollowedsByUserId(Long userId, Pageable pageable);

}
