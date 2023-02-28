package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.Activity;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/22 22:23
 */
public interface ActivityService {

  List<Activity> selectAll();

  List<Activity> selectAllByUserId(Long userId);

  void add(Activity activity);

}
