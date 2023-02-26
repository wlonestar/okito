package com.okito.okito.common.constant.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/4 22:54
 */
@Getter
@AllArgsConstructor
public enum RespStatus {

  OK(20, "ok"),

  NOT_EXIST(31, "object does not exist"),
  ALREADY_EXIST(32, "object already exists"),
  OBJECT_NULL(33, "the object is null"),
  FIELD_UNIQUE(34, "the field is unique"),

  ERROR(50, "server error"),
  PARSE_ERROR(51, "parse error"),
  PARAM_ERROR(52, "param error");

  private final int status;
  private final String message;

}
