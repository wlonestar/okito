package com.okito.okito.modules.users.model.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:18
 */
@Data
@Entity
@Table(name = "sys_user")
public class User implements Serializable {

  @Id
  @Column(name = "id")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
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
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss.SSSSSS")
  private LocalDateTime joinTime;

  @Column(name = "role_id")
  private Long roleId;

}
