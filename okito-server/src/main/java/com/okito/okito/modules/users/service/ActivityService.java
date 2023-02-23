package com.okito.okito.modules.users.service;

import com.okito.okito.modules.users.model.entity.Activity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/22 22:23
 */
public interface ActivityService {

  List<Activity> selectAll();

  List<Activity> selectAllByUserId(Long userId);

  Page<Activity> selectAll(Pageable pageable);

  void add(Activity activity);

}
