package com.okito.okito.modules.posts.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.posts.model.entity.Collection;
import com.okito.okito.modules.posts.service.CollectionService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * collection controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/13 11:33
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/collection")
public class CollectionController {

  @Resource
  private CollectionService collectionService;

  /**
   * select all collections
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(collectionService.selectAll());
  }

  /**
   * select collections by author id
   *
   * @param authorId author id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/author/{authorId}")
  public RespResult<?> selectAllByAuthorId(@NonNull @PathVariable(name = "authorId") Long authorId) {
    return RespResult.success(collectionService.selectAllByAuthorId(authorId));
  }

  /**
   * select collections by follower id
   *
   * @param followerId follower id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/follower/{followerId}")
  public RespResult<?> selectAllByFollowerId(@NonNull @PathVariable(name = "followerId") Long followerId) {
    return RespResult.success(collectionService.selectAllByFollowerId(followerId));
  }

  /**
   * select collection by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{id}")
  public RespResult<?> selectById(@NonNull @PathVariable(name = "id") Long id) {
    Collection column = collectionService.selectById(id);
    if (!Objects.equals(column, null)) {
      return RespResult.success(column);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * count collections by author id
   *
   * @param authorId author id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/count/posts/{authorId}")
  public RespResult<?> countCollectionsByAuthorId(@NonNull @PathVariable(name = "authorId") Long authorId) {
    return RespResult.success(collectionService.countByAuthorId(authorId));
  }

  /**
   * count posts by collection id
   *
   * @param collectionId collection id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/count/collection/{collectionId}")
  public RespResult<?> countPostsByCollectionId(@NonNull @PathVariable(name = "collectionId") Long collectionId) {
    return RespResult.success(collectionService.countPostsByCollectionId(collectionId));
  }

  /**
   * count posts num by collection id
   *
   * @param collectionId collection id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/count/follow/{collectionId}")
  public RespResult<?> countFollowNumByCollectionId(@NonNull @PathVariable(name = "collectionId") Long collectionId) {
    return RespResult.success(collectionService.countFollowNumByCollectionId(collectionId));
  }

  /**
   * add a collection
   *
   * @param collection collection
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody Collection collection) {
    log.info("{}", collection);
    Collection add = collectionService.add(collection);
    log.info("{}", add);
    return RespResult.success(add);
  }

  /**
   * update collection
   *
   * @param collection collection
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody Collection collection) {
    boolean flag = collectionService.update(collection);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * delete collection by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "/{id}")
  public RespResult<?> deleteById(@NonNull @PathVariable(name = "id") Long id) {
    boolean flag = collectionService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
