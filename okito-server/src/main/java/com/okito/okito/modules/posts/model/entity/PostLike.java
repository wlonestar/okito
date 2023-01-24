package com.okito.okito.modules.posts.model.entity;

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
 * @time 2023/1/5 22:14
 */
@Data
@Entity
@Table(name = "post_like")
@NoArgsConstructor
@AllArgsConstructor
public class PostLike implements Serializable {

  @EmbeddedId
  private PostLikeId id;

  @Column(name = "type")
  private Short type;

}
