package com.okito.okito.common.utils;

import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.exception.CosClientException;
import com.qcloud.cos.model.PutObjectRequest;
import com.qcloud.cos.region.Region;
import com.qcloud.cos.transfer.TransferManager;
import com.qcloud.cos.transfer.TransferManagerConfiguration;
import com.qcloud.cos.transfer.Upload;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/4 23:06
 */
public final class COSUtil {

  // TODO: need to replace with virosa configuration
  private static final String secretId = "xxx";
  private static final String secretKey = "xxx";
  private static final String region = "ap-nanjing";
  private static final String bucket = "projects-1305118058";
  private static final String prefix = "dbproj/";
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
      return prefix + URLEncoder.encode(filename, StandardCharsets.UTF_8).replaceAll("\\+", "%20");
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
