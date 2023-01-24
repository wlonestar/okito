package com.okito.okito.common.filter.handler;

import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import lombok.extern.slf4j.Slf4j;
import org.springframework.dao.InvalidDataAccessApiUsageException;
import org.springframework.data.mapping.PropertyReferenceException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.time.format.DateTimeParseException;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/4 23:03
 */
@Slf4j
@RestControllerAdvice
public class RestExceptionHandler {

//  @ExceptionHandler(Exception.class)
//  @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
//  public RespResult<String> exception(Exception e) {
//    log.error("global error => {}", e.getMessage(), e);
//    return RespResult.fail(RespStatus.ERROR.getStatus(), e.getMessage());
//  }

  // TODO: need to add more


  @ExceptionHandler(DateTimeParseException.class)
  @ResponseStatus(HttpStatus.BAD_REQUEST)
  public RespResult<?> dateTimeParseException(Exception e) {
    log.error("datetime parse error => {}", e.getMessage(), e);
    return RespResult.fail(RespStatus.PARSE_ERROR.getStatus(), e.getMessage());
  }

  // TODO: need to rename
  @ExceptionHandler(PropertyReferenceException.class)
  @ResponseStatus(HttpStatus.BAD_REQUEST)
  public RespResult<?> propertyReferenceException(Exception e) {
    log.error("param error => {}", e.getMessage(), e);
    return RespResult.fail(RespStatus.PARAM_ERROR.getStatus(), e.getMessage());
  }

  /**
   * handler for annotation @NonNull
   *
   * @param e exception
   * @return RespResult<?>
   */
  @ExceptionHandler(InvalidDataAccessApiUsageException.class)
  @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
  public RespResult<?> invalidDataAccessApiUsageException(Exception e) {
    log.error("HTTP Request param error => {}", e.getMessage(), e);
    return RespResult.fail(RespStatus.OBJECT_NULL.getStatus(), e.getMessage());
  }

}
