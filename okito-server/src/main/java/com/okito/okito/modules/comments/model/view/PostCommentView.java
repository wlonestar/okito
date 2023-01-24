package com.okito.okito.modules.comments.model.view;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import org.hibernate.annotations.Immutable;

import java.io.Serializable;
import java.time.Instant;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 15:08
 */
@Data
@Entity
@Immutable
@Table(name = "post_comment_view")
public class PostCommentView implements Serializable {

  @Id
  private Long id;
  private String content;
  private Instant uploadTime;
  private Long authorId;
  private Long postId;
  private Long parentId;
  private Long likeNum;

}
