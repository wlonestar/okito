package com.okito.okito.modules.posts.model.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 21:18
 */
@Data
@Builder
@Embeddable
@NoArgsConstructor
@AllArgsConstructor
public class PostCollectionId implements Serializable {

  @Column(name = "post_id")
  private Long postId;

  @Column(name = "collect_id")
  private Long collectionId;

}
