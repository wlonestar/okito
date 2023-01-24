package com.okito.okito.modules.users.model.param;

import lombok.Data;

import java.time.LocalDateTime;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/9 20:52
 */
@Data
public class RegisterParam {

  private String username;
  private String password;
  private String email;
  private String avatar;
  private LocalDateTime joinTime;
  private Long roleId;

}
