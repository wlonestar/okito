package com.okito.okito.modules.posts.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:14
 */
@Data
@Embeddable
@NoArgsConstructor
@AllArgsConstructor
public class PostLikeId implements Serializable {

  @Column(name = "post_id")
  private Long postId;

  @Column(name = "user_id")
  private Long userId;

}
