package com.okito.okito.modules.users.model.param;

import lombok.*;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/3/8 18:53
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserParam {

  private Long id;
  private String username;
  private String email;
  private String avatar;
  private String bio;
  private String homepage;
  private String intro;

}
