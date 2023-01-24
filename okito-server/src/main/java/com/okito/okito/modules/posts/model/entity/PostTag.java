package com.okito.okito.modules.posts.model.entity;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:15
 */
@Data
@Entity
@Table(name = "post_tag")
public class PostTag implements Serializable {

  @EmbeddedId
  private PostTagId id;

}
