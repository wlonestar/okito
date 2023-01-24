package com.okito.okito.common.filter.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.okito.okito.common.constant.consts.RespResult;
import jakarta.annotation.Resource;
import lombok.SneakyThrows;
import org.springframework.core.MethodParameter;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/4 23:01
 */
@RestControllerAdvice
public class ResponseAdvice implements ResponseBodyAdvice<Object> {

  @Resource
  private ObjectMapper objectMapper;

  @Override
  public boolean supports(
      @NonNull MethodParameter returnType,
      @NonNull Class<? extends HttpMessageConverter<?>> converterType) {
    return true;
  }

  @SneakyThrows
  @Override
  public Object beforeBodyWrite(
      Object body, @NonNull MethodParameter returnType, @NonNull MediaType selectedContentType,
      @NonNull Class<? extends HttpMessageConverter<?>> selectedConverterType,
      @NonNull ServerHttpRequest request, @NonNull ServerHttpResponse response) {
    if (body instanceof String) {
      return objectMapper.writeValueAsString(RespResult.success(body));
    }
    if (body instanceof RespResult) {
      return body;
    }
    return RespResult.success(body);
  }

}
