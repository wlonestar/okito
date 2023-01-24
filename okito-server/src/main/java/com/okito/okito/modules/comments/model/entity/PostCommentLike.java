package com.okito.okito.modules.comments.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:12
 */
@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "post_comment_like")
public class PostCommentLike implements Serializable {

  @EmbeddedId
  private PostCommentLikeId id;

  @Column(name = "type")
  private Short type;

}
