package com.okito.okito.modules.posts.model.param;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/3/2 20:24
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostCollectionParam {

  private Long postId;
  private Long collectionId;
  private Boolean follow;

}
