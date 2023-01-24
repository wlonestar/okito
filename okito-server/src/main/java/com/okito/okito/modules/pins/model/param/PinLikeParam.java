package com.okito.okito.modules.pins.model.param;

import lombok.Data;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/9 22:47
 */
@Data
public class PinLikeParam {

  private Long pinId;
  private Long userId;
  private Short type;

}
