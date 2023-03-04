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
 * @time 2023/1/5 20:35
 */
@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "collection")
public class Collection implements Serializable {

  @Id
  @Column(name = "id")
  @SequenceGenerator(name = "collection_id_seq", sequenceName = "collection_id_seq",
      allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "collection_id_seq")
  private Long id;

  @Column(name = "name")
  private String name;

  @Column(name = "type")
  private Boolean type;

  @Column(name = "description")
  private String description;

  @Column(name = "create_time")
  private LocalDateTime createTime;

  @Column(name = "update_time")
  private LocalDateTime updateTime;

  @Column(name = "author_id")
  private Long authorId;

}
