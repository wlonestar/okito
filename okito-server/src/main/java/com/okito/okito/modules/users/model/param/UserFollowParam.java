package com.okito.okito.modules.users.model.param;

import lombok.Data;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 22:14
 */
@Data
public class UserFollowParam {

  private Long followerId;
  private Long followedId;
  private Boolean follow;

}
