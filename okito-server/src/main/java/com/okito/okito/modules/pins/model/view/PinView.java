package com.okito.okito.modules.pins.model.view;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import org.hibernate.annotations.Immutable;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 14:36
 */
@Data
@Entity
@Immutable
@Table(name = "pin_view")
public class PinView implements Serializable {

  @Id
  private Long id;
  private String content;
  private LocalDateTime createTime;
  private LocalDateTime updateTime;
  private Long authorId;
  private Long viewNum;
  private Long likeNum;

}
