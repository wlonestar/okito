package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.TagFollow;
import com.okito.okito.modules.posts.model.entity.TagFollowId;
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
 * @time 2023/1/17 18:52
 */
@Repository
public interface TagFollowRepository extends JpaRepository<TagFollow, TagFollowId> {

  // TODO: move to user repository
  @Query(value = "select new UserView(u.id, u.username, u.password, u.email, u.token, u.avatar, u.bio, u.homepage, " +
      "u.intro, u.joinTime, u.followerNum, u.followedNum, u.postViewNum, u.postLikeNum) " +
      "from UserView u where u.id in (select tf.id.userId from TagFollow tf where tf.id.tagId = ?1)")
  List<UserView> findAllByTagId(Long tagId);

  // TODO: move to user repository
  @Query(value = "select new UserView(u.id, u.username, u.password, u.email, u.token, u.avatar, u.bio, u.homepage, " +
      "u.intro, u.joinTime, u.followerNum, u.followedNum, u.postViewNum, u.postLikeNum) " +
      "from UserView u where u.id in (select tf.id.userId from TagFollow tf where tf.id.tagId = ?1)")
  Page<UserView> findAllByTagId(Long tagId, Pageable pageable);

  @Query(value = "select count(*) from tag_follow where user_id = ?1 and follow = true", nativeQuery = true)
  long countAllByUserId(Long userId);

}
