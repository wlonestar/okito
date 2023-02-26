package com.okito.okito.modules.comments.model.param;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 23:09
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostCommentLikeParam {

  private Long commentId;
  private Long userId;
  private Short type;

}
