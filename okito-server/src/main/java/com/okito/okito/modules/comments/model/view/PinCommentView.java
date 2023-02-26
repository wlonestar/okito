package com.okito.okito.modules.comments.model.view;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Immutable;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 14:18
 */
@Data
@Entity
@Immutable
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "pin_comment_view")
public class PinCommentView implements Serializable {

  @Id
  private Long id;
  private String content;
  private LocalDateTime uploadTime;
  private Long authorId;
  private Long pinId;
  private Long parentId;
  private Long likeNum;

}
