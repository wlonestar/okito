package com.okito.okito.modules.posts.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:25
 */
@Data
@Entity
@Table(name = "tag_follow")
public class TagFollow implements Serializable {

  @EmbeddedId
  private TagFollowId id;

  @Column(name = "follow")
  private Boolean follow;

}
