package com.okito.okito.modules.posts.model.entity;

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
 * @time 2023/1/5 21:00
 */
@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "p_column")
public class Column implements Serializable {

  @Id
  @jakarta.persistence.Column(name = "id")
  @GeneratedValue(strategy = GenerationType.SEQUENCE)
  private Long id;

  @jakarta.persistence.Column(name = "name")
  private String name;

  @jakarta.persistence.Column(name = "cover")
  private String cover;

  @jakarta.persistence.Column(name = "description")
  private String description;

  @jakarta.persistence.Column(name = "create_time")
  private LocalDateTime createTime;

  @jakarta.persistence.Column(name = "update_time")
  private LocalDateTime updateTime;

  @jakarta.persistence.Column(name = "author_id")
  private Long authorId;

}
