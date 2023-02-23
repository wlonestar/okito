package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.view.UserView;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 18:49
 */
@Repository
public interface UserViewRepository extends JpaRepository<UserView, Long> {

  @Query(value = "select new UserView(u.id, u.username, u.password, u.email, u.token, u.avatar, u.bio, " +
    "u.homepage, u.intro, u.joinTime, u.followerNum, u.followedNum, u.postViewNum, u.postLikeNum) " +
    "from UserView u where u.id in (select uf.id.followedId from UserFollow uf where uf.id.followerId = ?1 and uf.follow = true)")
  List<UserView> findAllFollowingByUserId(Long userId);

  @Query(value = "select new UserView(u.id, u.username, u.password, u.email, u.token, u.avatar, u.bio, " +
    "u.homepage, u.intro, u.joinTime, u.followerNum, u.followedNum, u.postViewNum, u.postLikeNum) " +
    "from UserView u where u.id in (select uf.id.followerId from UserFollow uf where uf.id.followedId = ?1 and uf.follow = true)")
  List<UserView> findAllFollowerByUserId(Long userId);

}
