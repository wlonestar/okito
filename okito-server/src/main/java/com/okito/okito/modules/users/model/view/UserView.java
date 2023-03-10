package com.okito.okito.modules.users.model.view;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Immutable;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 15:18
 */
@Data
@Entity
@Builder
@Immutable
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "user_view")
public class UserView implements Serializable {

  @Id
  private Long id;
  private String username;
  private String password;
  private String email;
  private String token;
  private String avatar;
  private String bio;
  private String homepage;
  private String intro;
  private LocalDateTime joinTime;
  private Long followerNum;
  private Long followedNum;
  private Long postViewNum;
  private Long postLikeNum;

}
