package com.okito.okito.common.utils;

import cn.dev33.satoken.secure.SaSecureUtil;
import com.okito.okito.common.entity.CustomImageFile;
import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.exception.CosClientException;
import com.qcloud.cos.model.COSObjectSummary;
import com.qcloud.cos.model.ListObjectsRequest;
import com.qcloud.cos.model.ObjectListing;
import com.qcloud.cos.model.PutObjectRequest;
import com.qcloud.cos.region.Region;
import com.qcloud.cos.transfer.TransferManager;
import com.qcloud.cos.transfer.TransferManagerConfiguration;
import com.qcloud.cos.transfer.Upload;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/4 23:06
 */
@Slf4j
public final class COSUtil {

  private static final String secretId = "AKIDudPyLTN3TzX4YsIj3VnrgFZs590d5LNY";
  private static final String secretKey = SaSecureUtil.aesDecrypt("123113",
      "rKmbSLVzFsu1WDWaQTURlsNiNUV2zu1uWWMFxsvkd4BX6swEdpM2Tdqt3bk+lRXf");
  private static final String region = "ap-nanjing";
  private static final String bucket = "projects-1305118058";
  private static final String prefix = "okito-test/";
  private static final String urlPrefix = "https://" + bucket + ".cos." + region + ".myqcloud.com/";

  private COSUtil() {
  }

  private static COSClient createCOSClient() {
    COSCredentials credentials = new BasicCOSCredentials(secretId, secretKey);
    ClientConfig clientConfig = new ClientConfig(new Region(region));
    return new COSClient(credentials, clientConfig);
  }

  private static TransferManager createTransferManger() {
    COSClient client = createCOSClient();
    ExecutorService threadPool = Executors.newFixedThreadPool(16);
    TransferManager transferManager = new TransferManager(client, threadPool);
    TransferManagerConfiguration configuration = new TransferManagerConfiguration();
    configuration.setMultipartCopyThreshold(5 * 1024 * 1024);
    configuration.setMinimumUploadPartSize(1024 * 1024);
    transferManager.setConfiguration(configuration);
    return transferManager;
  }

  private static String uploadFile(File file, String filename) {
    TransferManager transferManager = createTransferManger();
    PutObjectRequest objectRequest = new PutObjectRequest(bucket, prefix + filename, file);
    try {
      Upload upload = transferManager.upload(objectRequest);
      upload.waitForUploadResult();
      return prefix + URLEncoder.encode(filename, StandardCharsets.UTF_8)
          .replaceAll("\\+", "%20");
    } catch (CosClientException | InterruptedException e) {
      e.printStackTrace();
      return null;
    }
  }

  public static String upload(MultipartFile multipartFile) {
    try {
      File file = File.createTempFile("tmp", null);
      multipartFile.transferTo(file);
      String filename = multipartFile.getOriginalFilename();
      String url = uploadFile(file, filename);
      return urlPrefix + url;
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

  public static List<CustomImageFile> listAll() {
    List<CustomImageFile> files = new ArrayList<>();
    COSClient cosClient = createCOSClient();
    ListObjectsRequest listObjectsRequest = new ListObjectsRequest();
    listObjectsRequest.setBucketName(bucket);
    // 这里填要列出的目录的相对 bucket 的路径
    listObjectsRequest.setPrefix("/" + prefix);
    // delimiter 表示目录的截断符, 例如：设置为 / 则表示对象名遇到 / 就当做一级目录）
    listObjectsRequest.setDelimiter("/");
    // 设置最大遍历出多少个对象, 一次 list-object 最大支持1000
    listObjectsRequest.setMaxKeys(1000);
    ObjectListing objectListing = null;
    do {
      try {
        objectListing = cosClient.listObjects(listObjectsRequest);
      } catch (CosClientException e) {
        e.printStackTrace();
      }
      // 这里保存列出的对象列表
      assert objectListing != null;
      List<COSObjectSummary> cosObjectSummaries = objectListing.getObjectSummaries();
      long i = 0;
      for (COSObjectSummary cosObjectSummary : cosObjectSummaries) {
        String key = cosObjectSummary.getKey();
        long fileSize = cosObjectSummary.getSize();
        if (!Objects.equals(key, prefix)) {
          files.add(new CustomImageFile((i++), urlPrefix + key, fileSize));
        }
      }
      // 标记下一次开始的位置
      String nextMarker = objectListing.getNextMarker();
      listObjectsRequest.setMarker(nextMarker);
    } while (objectListing.isTruncated());
    cosClient.shutdown();
    return files;
  }

  @Deprecated
  public static String upload(File file) {
    try {
      String filename = file.getName();
      uploadFile(file, filename);
      return urlPrefix + filename;
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

  @Deprecated
  public static String upload(File file, String filename) {
    try {
      uploadFile(file, filename);
      return urlPrefix + filename;
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

}
