package com.okito.okito.modules.users.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:29
 */
@Data
@Embeddable
@NoArgsConstructor
@AllArgsConstructor
public class UserColumnId implements Serializable {

  @Column(name = "user_id")
  private Long userId;

  @Column(name = "column_id")
  private Long columnId;

}
