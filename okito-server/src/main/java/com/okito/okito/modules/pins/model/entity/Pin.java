package com.okito.okito.modules.pins.model.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 21:01
 */
@Data
@Entity
@Table(name = "pin")
public class Pin implements Serializable {

  @Id
  @SequenceGenerator(name = "pin_id_seq", sequenceName = "pin_id_seq", allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "pin_id_seq")
  @Column(name = "id", updatable = false)
  private Long id;

  @Column(name = "content")
  private String content;

  @Column(name = "create_time")
//  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss.SSSSSS")
  private LocalDateTime createTime;

  @Column(name = "update_time")
//  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss.SSSSSS")
  private LocalDateTime updateTime;

  @Column(name = "author_id")
  private Long authorId;

  // TODO: add viewNum
  @Column(name = "view_num")
  private Long viewNum;

}
