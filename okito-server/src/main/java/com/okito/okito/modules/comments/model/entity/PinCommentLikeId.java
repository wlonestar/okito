package com.okito.okito.modules.comments.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 21:05
 */
@Data
@Embeddable
@NoArgsConstructor
@AllArgsConstructor
public class PinCommentLikeId implements Serializable {

  @Column(name = "comment_id")
  private Long commentId;

  @Column(name = "user_id")
  private Long userId;

}
