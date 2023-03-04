package com.okito.okito.modules.users.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.users.model.entity.UserCollectionFollow;
import com.okito.okito.modules.users.model.entity.UserCollectionFollowId;
import com.okito.okito.modules.users.model.param.UserCollectionFollowParam;
import com.okito.okito.modules.users.service.UserCollectionFollowService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * user collection controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 21:18
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/user/collection")
public class UserCollectionFollowController {

  @Resource
  private UserCollectionFollowService userCollectionFollowService;

  /**
   * select all userCollections
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(userCollectionFollowService.selectAll());
  }

  /**
   * select userCollection by id
   *
   * @param userId       userId
   * @param collectionId collectionId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/single")
  public RespResult<?> selectById(
      @NonNull @RequestParam(name = "userId") Long userId,
      @NonNull @RequestParam(name = "collectionId") Long collectionId) {
    UserCollectionFollowId id = new UserCollectionFollowId(userId, collectionId);
    UserCollectionFollow collection = userCollectionFollowService.selectById(id);
    if (!Objects.equals(collection, null)) {
      return RespResult.success(collection);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a userCollection
   *
   * @param param userCollectionParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody UserCollectionFollowParam param) {
    UserCollectionFollowId id =
        new UserCollectionFollowId(param.getUserId(), param.getCollectionId());
    UserCollectionFollow collection = userCollectionFollowService.selectById(id);
    if (!Objects.equals(collection, null)) {
      userCollectionFollowService.add(new UserCollectionFollow(id, param.getFollow()));
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.ALREADY_EXIST);
  }

  /**
   * update userCollection
   *
   * @param param userCollectionParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody UserCollectionFollowParam param) {
    UserCollectionFollowId id =
        new UserCollectionFollowId(param.getUserId(), param.getCollectionId());
    UserCollectionFollow collection = userCollectionFollowService.selectById(id);
    if (!Objects.equals(collection, null)) {
      collection.setFollow(param.getFollow());
      userCollectionFollowService.update(collection);
    } else {
      collection = new UserCollectionFollow(id, param.getFollow());
      userCollectionFollowService.add(collection);
    }
    return RespResult.success(collection);
  }

  /**
   * delete userCollection by id
   *
   * @param userId       userId
   * @param collectionId collectionId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "")
  public RespResult<?> deleteById(
      @NonNull @RequestParam(name = "userId") Long userId,
      @NonNull @RequestParam(name = "collectionId") Long collectionId) {
    UserCollectionFollowId id = new UserCollectionFollowId(userId, collectionId);
    boolean flag = userCollectionFollowService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
