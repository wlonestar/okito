package com.okito.okito.common.utils;

import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/4 23:08
 */
public final class DateUtil {

  private static final String pattern = "yyyy-MM-dd HH:mm:ss.SSSSSSSSS";
  private static volatile DateUtil instance = null;

  private DateUtil() {
  }

  public static DateUtil getInstance() {
    if (null == instance) {
      synchronized (DateUtil.class) {
        if (null == instance) {
          instance = new DateUtil();
        }
      }
    }
    return instance;
  }

  public String date2str(Date date) {
    return new SimpleDateFormat(pattern).format(date);
  }

  public String localDateTime2str(LocalDateTime dateTime) {
    return dateTime.format(DateTimeFormatter.ofPattern(pattern));
  }

  public String getSubtract(LocalDateTime start, LocalDateTime end) {
    return String.format("%.9f", (double) Duration.between(start, end).toNanos() / Math.pow(10, 9));
  }

}
