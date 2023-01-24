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
 * @time 2023/1/5 22:27
 */
@Data
@Embeddable
@NoArgsConstructor
@AllArgsConstructor
public class UserCollectionId implements Serializable {

  @Column(name = "user_id")
  private Long userId;

  @Column(name = "collect_id")
  private Long collectId;

}
