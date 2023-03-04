package com.okito.okito.modules.users.model.entity;

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
 * @time 2023/1/5 22:18
 */
@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "sys_user")
public class User implements Serializable {

  @Id
  @Column(name = "id")
  @SequenceGenerator(name = "user_id_seq", sequenceName = "user_id_seq", allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_id_seq")
  private Long id;

  @Column(name = "username")
  private String username;

  @Column(name = "password")
  private String password;

  @Column(name = "email")
  private String email;

  @Column(name = "token")
  private String token;

  @Column(name = "avatar")
  private String avatar;

  @Column(name = "bio")
  private String bio;

  @Column(name = "homepage")
  private String homepage;

  @Column(name = "intro")
  private String intro;

  @Column(name = "join_time")
  private LocalDateTime joinTime;

  @Column(name = "role_id")
  private Long roleId;

}
