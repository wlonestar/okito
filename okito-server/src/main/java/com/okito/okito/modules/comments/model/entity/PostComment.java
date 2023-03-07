package com.okito.okito.modules.comments.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:10
 */
@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "post_comment")
public class PostComment implements Serializable {

  @Id
  @Column(name = "id")
  @SequenceGenerator(name = "post_comment_id_seq", sequenceName = "post_comment_id_seq",
      allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "post_comment_id_seq")
  private Long id;

  @Column(name = "content")
  private String content;

  @Column(name = "upload_time")
  private LocalDateTime uploadTime;

  @Column(name = "author_id")
  private Long authorId;

  @Column(name = "post_id")
  private Long postId;

  @Column(name = "parent_id")
  private Long parentId;

}
