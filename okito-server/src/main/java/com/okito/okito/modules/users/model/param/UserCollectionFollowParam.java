package com.okito.okito.modules.users.model.param;

import lombok.Data;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 19:42
 */
@Data
public class UserCollectionFollowParam {

  private Long userId;
  private Long collectionId;
  private Boolean follow;

}
