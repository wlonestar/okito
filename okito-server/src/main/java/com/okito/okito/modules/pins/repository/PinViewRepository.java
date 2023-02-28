package com.okito.okito.modules.pins.repository;

import com.okito.okito.common.repository.ReadOnlyRepository;
import com.okito.okito.modules.pins.model.view.PinView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 20:07
 */
@Repository
public interface PinViewRepository extends ReadOnlyRepository<PinView, Long> {

  @Query(value = "select * from pin_view order by random() limit 100", nativeQuery = true)
  List<PinView> findRecommend100();

  @Query(value = "select * from pin_view where create_time between now() - interval '72 HOURS' and now() " +
    "order by view_num desc limit 100", nativeQuery = true)
  List<PinView> findHot100();

  List<PinView> findAllByAuthorId(Long authorId);

  @Query(value = "select * from pin_view p where p.author_id in " +
    "(select u.followed_id from user_follow u where u.follower_id = ?1 and u.follow = true)", nativeQuery = true)
  List<PinView> findAllByUserFollowed(Long userId);

  @Deprecated
  Page<PinView> findAllByAuthorId(Long authorId, Pageable pageable);

}
