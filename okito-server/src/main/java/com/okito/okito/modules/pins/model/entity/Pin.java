package com.okito.okito.modules.pins.model.entity;

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
 * @time 2023/1/5 21:01
 */
@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "pin")
public class Pin implements Serializable {

  @Id
  @Column(name = "id")
  @SequenceGenerator(name = "pin_id_seq", sequenceName = "pin_id_seq", allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "pin_id_seq")
  private Long id;

  @Column(name = "content")
  private String content;

  @Column(name = "create_time")
  private LocalDateTime createTime;

  @Column(name = "update_time")
  private LocalDateTime updateTime;

  @Column(name = "author_id")
  private Long authorId;

  @Column(name = "view_num")
  private Long viewNum;

}
