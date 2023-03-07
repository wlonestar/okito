package com.okito.okito.common.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.entity.CustomImageFile;
import com.okito.okito.common.utils.COSUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * file controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/3/5 20:06
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/file")
public class FileController {

  /**
   * upload files
   *
   * @param file file
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "/upload")
  public RespResult<?> uploadSingle(@NonNull @RequestParam("file") MultipartFile file) {
    String upload = COSUtil.upload(file);
    return RespResult.success(upload);
  }

  /**
   * list all uploaded files
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> listAll() {
    List<CustomImageFile> files = COSUtil.listAll();
    return RespResult.success(files);
  }

}
