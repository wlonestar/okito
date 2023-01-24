package com.okito.okito.modules.comments.model.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.io.Serializable;
import java.time.Instant;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 21:03
 */
@Data
@Entity
@Table(name = "pin_comment")
public class PinComment implements Serializable {

  @Id
  @Column(name = "id")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(name = "content")
  private String content;

  @Column(name = "upload_time")
  private Instant uploadTime;

  @Column(name = "author_id")
  private Long authorId;

  @Column(name = "pin_id")
  private Long pinId;

  @Column(name = "parent_id")
  private Long parentId;

}
