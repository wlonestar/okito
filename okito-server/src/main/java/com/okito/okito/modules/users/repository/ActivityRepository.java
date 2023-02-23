package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.users.model.entity.Activity;
import org.checkerframework.checker.units.qual.A;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/22 22:23
 */
@Repository
public interface ActivityRepository extends JpaRepository<Activity, Long> {

  List<Activity> findAllByUserId(Long userId);

  List<Activity> findAllByUserIdAndActionTypeAndActionSubTypeAndTargetId(
    Long userId, Short actionType, Short actionSubType, Long targetId);

}
