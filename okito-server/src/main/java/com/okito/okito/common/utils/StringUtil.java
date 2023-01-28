package com.okito.okito.common.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/27 15:29
 */
public final class StringUtil {

  private static volatile StringUtil instance = null;

  private StringUtil() {
  }

  public static StringUtil getInstance() {
    if (null == instance) {
      synchronized (StringUtil.class) {
        if (null == instance) {
          instance = new StringUtil();
        }
      }
    }
    return instance;
  }

  private static void test(String str) {
    System.out.println(str + ":" + StringUtil.getInstance().parseEmail(str));
  }

  public static void main(String[] args) {
    test("12231@121.com");
    test("12231@121");
  }

  public String parseEmail(String str) {
    Matcher m = Pattern.compile("[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+").matcher(str);
    String email = null;
    if (m.find()) {
      email = m.group(0);
    }
    return email;
  }

}
