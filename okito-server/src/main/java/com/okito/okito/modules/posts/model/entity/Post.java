package com.okito.okito.modules.posts.model.entity;

import jakarta.persistence.Column;
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
 * @time 2023/1/5 21:06
 */
@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "post")
public class Post implements Serializable {

  @Id
  @Column(name = "id")
  @SequenceGenerator(name = "post_id_seq", sequenceName = "post_id_seq", allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "post_id_seq")
  private Long id;

  @Column(name = "title")
  private String title;

  @Column(name = "summary")
  private String summary;

  @Column(name = "cover")
  private String cover;

  @Column(name = "content")
  private String content;

  @Column(name = "create_time")
  private LocalDateTime createTime;

  @Column(name = "update_time")
  private LocalDateTime updateTime;

  @Column(name = "draft")
  private Boolean draft;

  @Column(name = "cate_id")
  private Long cateId;

  @Column(name = "author_id")
  private Long authorId;

  @Column(name = "view_num")
  private Long viewNum;

}
