package com.okito.okito.common.config;

import com.okito.okito.common.filter.interceptor.RequestInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/4 22:52
 */
@Configuration
public class SaTokenConfig implements WebMvcConfigurer {

  @Override
  public void addInterceptors(InterceptorRegistry registry) {
//    registry.addInterceptor(new SaInterceptor(handle -> StpUtil.checkLogin()))
//        .addPathPatterns("/**").excludePathPatterns("/auth/login");
    registry.addInterceptor(new RequestInterceptor()).addPathPatterns("/**");
  }

}
