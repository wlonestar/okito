package com.okito.okito.modules.comments.model.param;

import lombok.Data;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 23:09
 */
@Data
public class PostCommentLikeParam {

  private Long commentId;
  private Long userId;
  private Short type;

}
