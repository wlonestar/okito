package com.okito.okito.modules.posts.model.param;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/24 10:04
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TagFollowParam {

  private Long userId;
  private Long tagId;
  private Boolean follow;

}
