package com.okito.okito.common.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/3/5 21:09
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CustomImageFile implements Serializable {

  private Long id;
  private String url;
  private Long fileSize;

}
