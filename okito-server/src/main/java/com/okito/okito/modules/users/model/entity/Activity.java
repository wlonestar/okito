package com.okito.okito.modules.users.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * activity 动态
 * <p>
 * id 主键
 * <p>
 * userId 动作的执行人
 * <p>
 * actionType 动作的类别
 * <p>
 * actionSubType 动作的子分类
 * <p>
 * - like 点赞
 * <p>
 * * post 文章
 * <p>
 * - pin 想法
 * <p>
 * - follow 关注
 * <p>
 * - user 用户
 * <p>
 * - column 专栏
 * <p>
 * - collection 收藏夹
 * <p>
 * - upload 发布
 * <p>
 * - post 文章
 * <p>
 * - pin 想法
 * <p>
 * targetId 对象的 id
 * <p>
 * execTime 执行时间
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/22 22:18
 */
@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "activity")
public class Activity implements Serializable {

  @Id
  @Column(name = "id")
  @GeneratedValue(strategy = GenerationType.SEQUENCE)
  private Long id;

  @Column(name = "user_id")
  private Long userId;

  @Column(name = "action_type")
  private Short actionType;

  @Column(name = "action_sub_type")
  private Short actionSubType;

  @Column(name = "target_id")
  private Long targetId;

  @Column(name = "exec_time")
  private LocalDateTime execTime;

}
