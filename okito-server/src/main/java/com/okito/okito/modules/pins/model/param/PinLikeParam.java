package com.okito.okito.modules.pins.model.param;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/9 22:47
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PinLikeParam {

  private Long pinId;
  private Long userId;
  private Short type;

}
