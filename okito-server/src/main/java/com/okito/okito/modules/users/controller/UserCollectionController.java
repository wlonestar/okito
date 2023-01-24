package com.okito.okito.modules.users.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.users.model.entity.UserCollection;
import com.okito.okito.modules.users.model.entity.UserCollectionId;
import com.okito.okito.modules.users.model.param.UserCollectionParam;
import com.okito.okito.modules.users.service.UserCollectionService;
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
public class UserCollectionController {

  @Resource
  private UserCollectionService userCollectionService;

  /**
   * select all userCollections
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(userCollectionService.selectAll());
  }

  /**
   * select userCollections by userId and type
   *
   * @param userId userId
   * @param type   collection type
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{userId}")
  public RespResult<?> selectByUserIdAndType(
      @NonNull @PathVariable(name = "userId") Long userId, @NonNull @RequestParam(name = "type") Short type) {
    if (type > 0 && type < 4) {
      return RespResult.success(userCollectionService.selectByUserIdAndType(userId, type));
    }
    return RespResult.fail(RespStatus.PARAM_ERROR);
  }

  /**
   * select userCollections by collectionId and type
   *
   * @param collectionId collectionId
   * @param type         collection type
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{collectionId}")
  public RespResult<?> selectByCollectionIdAndType(
      @NonNull @PathVariable(name = "collectionId") Long collectionId, @NonNull @RequestParam(name = "type") Short type) {
    if (type > 0 && type < 4) {
      return RespResult.success(userCollectionService.selectByCollectionIdAndType(collectionId, type));
    }
    return RespResult.fail(RespStatus.PARAM_ERROR);
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
    return RespResult.success(userCollectionService.selectAll(pageable));
  }

  /**
   * select userCollections by userId, type and page
   *
   * @param userId   userID
   * @param type     collection type
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/{userId}")
  public RespResult<?> selectByUserIdAndType(
      @NonNull @PathVariable(name = "userId") Long userId, @NonNull @RequestParam(name = "type") Short type,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    if (type > 0 && type < 4) {
      return RespResult.success(userCollectionService.selectByUserIdAndType(userId, type, pageable));
    }
    return RespResult.fail(RespStatus.PARAM_ERROR);
  }

  /**
   * select userCollections by collectionId, type and page
   *
   * @param collectionId collectionId
   * @param type         collection type
   * @param pageable     format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/{collectionId}")
  public RespResult<?> selectByCollectionIdAndType(
      @NonNull @PathVariable(name = "collectionId") Long collectionId, @NonNull @RequestParam(name = "type") Short type,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    if (type > 0 && type < 4) {
      return RespResult.success(userCollectionService.selectByCollectionIdAndType(collectionId, type, pageable));
    }
    return RespResult.fail(RespStatus.PARAM_ERROR);
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
    UserCollectionId id = new UserCollectionId(userId, collectionId);
    UserCollection collection = userCollectionService.selectById(id);
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
  public RespResult<?> add(@NonNull @RequestBody UserCollectionParam param) {
    UserCollectionId id = new UserCollectionId(param.getUserId(), param.getCollectId());
    UserCollection collection = userCollectionService.selectById(id);
    if (!Objects.equals(collection, null)) {
      userCollectionService.add(new UserCollection(id, param.getType()));
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
  public RespResult<?> update(@NonNull @RequestBody UserCollectionParam param) {
    UserCollectionId id = new UserCollectionId(param.getUserId(), param.getCollectId());
    UserCollection collection = userCollectionService.selectById(id);
    if (!Objects.equals(collection, null)) {
      collection.setType(param.getType());
      userCollectionService.update(collection);
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
    UserCollectionId id = new UserCollectionId(userId, collectionId);
    boolean flag = userCollectionService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
