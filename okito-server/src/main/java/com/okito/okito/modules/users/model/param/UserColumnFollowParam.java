package com.okito.okito.modules.users.model.param;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:49
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserColumnFollowParam {

  private Long userId;
  private Long columnId;
  private Boolean follow;

}
