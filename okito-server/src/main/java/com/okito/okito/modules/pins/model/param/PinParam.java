package com.okito.okito.modules.pins.model.param;

import lombok.Data;

import java.time.LocalDateTime;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/22 20:24
 */
@Data
public class PinParam {

  private Long id;
  private String content;
  private LocalDateTime createTime;
  private LocalDateTime updateTime;
  private Long authorId;

}
