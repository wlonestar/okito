package com.okito.okito.modules.posts.model.param;

import lombok.Data;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 14:28
 */
@Data
public class PostLikeParam {

  private Long postId;
  private Long userId;
  private Short type;

}
