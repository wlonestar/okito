package com.okito.okito.modules.users.model.param;

import lombok.Data;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:49
 */
@Data
public class UserColumnParam {

  private Long userId;
  private Long columnId;
  private Short type;

}
