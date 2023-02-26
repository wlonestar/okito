package com.okito.okito.modules.posts.model.param;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 14:28
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostLikeParam {

  private Long postId;
  private Long userId;
  private Short type;

}
