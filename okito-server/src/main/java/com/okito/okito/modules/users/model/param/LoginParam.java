package com.okito.okito.modules.users.model.param;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/9 20:23
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LoginParam {

  private String email;
  private String password;
  private String device;

}
