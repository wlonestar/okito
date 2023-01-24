package com.okito.okito.modules.posts.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Data;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:15
 */
@Data
@Embeddable
public class PostTagId implements Serializable {

  @Column(name = "post_id")
  private Long postId;

  @Column(name = "tag_id")
  private Long tagId;

}
