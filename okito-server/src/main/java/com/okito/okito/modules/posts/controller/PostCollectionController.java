package com.okito.okito.modules.posts.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.posts.model.entity.PostCollection;
import com.okito.okito.modules.posts.model.entity.PostCollectionId;
import com.okito.okito.modules.posts.model.param.PostCollectionParam;
import com.okito.okito.modules.posts.service.PostCollectionService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * post collection controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/3/2 20:38
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/post/collection")
public class PostCollectionController {

  @Resource
  private PostCollectionService postCollectionService;

  /**
   * select PostCollection by id
   *
   * @param postId       postId
   * @param collectionId collectionId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/single")
  public RespResult<?> selectById(
      @NonNull @RequestParam(name = "postId") Long postId,
      @NonNull @RequestParam(name = "collectionId") Long collectionId) {
    PostCollectionId id = new PostCollectionId(postId, collectionId);
    PostCollection postCollection = postCollectionService.selectById(id);
    if (!Objects.equals(postCollection, null)) {
      return RespResult.success(postCollection);
    }
    return RespResult.success(new PostCollection(id, false));
  }

  /**
   * add PostCollection
   *
   * @param param PostCollectionParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody PostCollectionParam param) {
    PostCollectionId id = new PostCollectionId(param.getPostId(), param.getCollectionId());
    PostCollection postCollection = postCollectionService.selectById(id);
    if (!Objects.equals(postCollection, null)) {
      postCollectionService.add(new PostCollection(id, param.getFollow()));
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.ALREADY_EXIST);
  }

  /**
   * update PostCollection
   *
   * @param param PostCollectionParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody PostCollectionParam param) {
    PostCollectionId id = new PostCollectionId(param.getPostId(), param.getCollectionId());
    PostCollection postCollection = postCollectionService.selectById(id);
    if (!Objects.equals(postCollection, null)) {
      postCollection.setFollow(param.getFollow());
      postCollectionService.update(postCollection);
    } else {
      postCollection = new PostCollection(id, param.getFollow());
      postCollectionService.add(postCollection);
    }
    return RespResult.success(postCollection);
  }

  /**
   * delete PostCollection by id
   *
   * @param postId       postId
   * @param collectionId collectionId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "")
  public RespResult<?> deleteById(
      @NonNull @RequestParam(name = "postId") Long postId,
      @NonNull @RequestParam(name = "collectionId") Long collectionId) {
    PostCollectionId id = new PostCollectionId(postId, collectionId);
    boolean flag = postCollectionService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
