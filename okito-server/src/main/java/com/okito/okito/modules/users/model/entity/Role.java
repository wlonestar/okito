package com.okito.okito.modules.users.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:17
 */
@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "role")
public class Role implements Serializable {

  @Id
  @Column(name = "id")
  @SequenceGenerator(name = "role_id_seq", sequenceName = "role_id_seq", allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "role_id_seq")
  private Long id;

  @Column(name = "name")
  private String name;

}
