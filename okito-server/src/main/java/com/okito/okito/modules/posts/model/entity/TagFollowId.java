package com.okito.okito.modules.posts.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Data;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:25
 */
@Data
@Embeddable
public class TagFollowId implements Serializable {

  @Column(name = "tag_id")
  private Long tagId;

  @Column(name = "user_id")
  private Long userId;

}
