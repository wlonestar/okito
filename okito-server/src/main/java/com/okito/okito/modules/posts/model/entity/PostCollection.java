package com.okito.okito.modules.posts.model.entity;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 21:17
 */
@Data
@Entity
@Table(name = "post_collection")
public class PostCollection implements Serializable {

  @EmbeddedId
  private PostCollectionId id;

}
