package com.okito.okito.modules.users.service.impl;

import com.okito.okito.modules.users.model.entity.Activity;
import com.okito.okito.modules.users.repository.ActivityRepository;
import com.okito.okito.modules.users.service.ActivityService;
import jakarta.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/22 22:23
 */
@Service
public class ActivityServiceImpl implements ActivityService {

  @Resource
  private ActivityRepository activityRepository;

  @Override
  public List<Activity> selectAll() {
    return activityRepository.findAll();
  }

  @Override
  public List<Activity> selectAllByUserId(Long userId) {
    return activityRepository.findAllByUserId(userId);
  }

  @Override
  public Page<Activity> selectAll(Pageable pageable) {
    return activityRepository.findAll(pageable);
  }

  @Override
  public void add(Activity activity) {
    List<Activity> activities = activityRepository.findAllByUserIdAndActionTypeAndActionSubTypeAndTargetId(
      activity.getUserId(), activity.getActionType(), activity.getActionSubType(), activity.getTargetId()
    );
    if (activities.size() != 0) {
      Activity one = activities.get(0);
      activities.remove(0);
      activities.forEach(l -> activityRepository.deleteById(l.getId()));
      activity.setExecTime(one.getExecTime());
    }
    activityRepository.save(activity);
  }

}
