package com.okito.okito.common.constant.consts;

import com.okito.okito.common.constant.enums.RespStatus;
import lombok.Builder;
import lombok.Data;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/4 22:56
 */
@Data
@Builder
public class RespResult<T> {

  private long timestamp;
  private int status;
  private String message;
  private T data;

  public static <T> RespResult<T> success() {
    return RespResult.<T>builder()
        .timestamp(System.currentTimeMillis())
        .status(RespStatus.OK.getStatus())
        .message(RespStatus.OK.getMessage())
        .build();
  }

  public static <T> RespResult<T> success(T data) {
    return RespResult.<T>builder()
        .timestamp(System.currentTimeMillis())
        .status(RespStatus.OK.getStatus())
        .message(RespStatus.OK.getMessage())
        .data(data)
        .build();
  }

  public static <T> RespResult<T> fail() {
    return RespResult.<T>builder()
        .timestamp(System.currentTimeMillis())
        .status(RespStatus.ERROR.getStatus())
        .message("not implemented!")
        .build();
  }

  public static <T> RespResult<T> fail(RespStatus respStatus) {
    return RespResult.<T>builder()
        .timestamp(System.currentTimeMillis())
        .status(respStatus.getStatus())
        .message(respStatus.getMessage())
        .build();
  }

  public static <T> RespResult<T> fail(int status, String message) {
    return RespResult.<T>builder()
        .timestamp(System.currentTimeMillis())
        .status(status)
        .message(message)
        .build();
  }

}
