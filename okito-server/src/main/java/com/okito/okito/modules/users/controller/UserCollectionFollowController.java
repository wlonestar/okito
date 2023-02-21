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
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
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
   * TODO
   * <p></p>
   * select userCollections by userId and type
   *
   * @param userId userId
   * @param follow follow
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{userId}")
  public RespResult<?> selectByUserIdAndType(
      @NonNull @PathVariable(name = "userId") Long userId, @NonNull @RequestParam(name = "follow") Boolean follow) {
//    if (follow) {
      return RespResult.success(userCollectionFollowService.selectByUserIdAndType(userId, follow));
//    }
//    return RespResult.fail(RespStatus.PARAM_ERROR);
  }

  /**
   * TODO
   * <p></p>
   * select userCollections by collectionId and type
   *
   * @param collectionId collectionId
   * @param follow follow
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{collectionId}")
  public RespResult<?> selectByCollectionIdAndType(
      @NonNull @PathVariable(name = "collectionId") Long collectionId, @NonNull @RequestParam(name = "follow") Boolean follow) {
//    if (type > 0 && type < 4) {
      return RespResult.success(userCollectionFollowService.selectByCollectionIdAndType(collectionId, follow));
//    }
//    return RespResult.fail(RespStatus.PARAM_ERROR);
  }

  /**
   * select all userCollections by page
   *
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page")
  public RespResult<?> selectAll(
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(userCollectionFollowService.selectAll(pageable));
  }

  /**
   * TODO
   * <p></p>
   * select userCollections by userId, type and page
   *
   * @param userId   userID
   * @param follow  follow
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/{userId}")
  public RespResult<?> selectByUserIdAndType(
      @NonNull @PathVariable(name = "userId") Long userId, @NonNull @RequestParam(name = "follow") Boolean follow,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
//    if (type > 0 && type < 4) {
      return RespResult.success(userCollectionFollowService.selectByUserIdAndType(userId, follow, pageable));
//    }
//    return RespResult.fail(RespStatus.PARAM_ERROR);
  }

  /**
   * TODO
   * <p></p>
   * select userCollections by collectionId, type and page
   *
   * @param collectionId collectionId
   * @param follow follow
   * @param pageable     format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/{collectionId}")
  public RespResult<?> selectByCollectionIdAndType(
      @NonNull @PathVariable(name = "collectionId") Long collectionId, @NonNull @RequestParam(name = "follow") Boolean follow,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
//    if (type > 0 && type < 4) {
      return RespResult.success(userCollectionFollowService.selectByCollectionIdAndType(collectionId, follow, pageable));
//    }
//    return RespResult.fail(RespStatus.PARAM_ERROR);
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
    UserCollectionFollowId id = new UserCollectionFollowId(param.getUserId(), param.getCollectId());
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
    UserCollectionFollowId id = new UserCollectionFollowId(param.getUserId(), param.getCollectId());
    UserCollectionFollow collection = userCollectionFollowService.selectById(id);
    if (!Objects.equals(collection, null)) {
      collection.setFollow(param.getFollow());
      userCollectionFollowService.update(collection);
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
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
