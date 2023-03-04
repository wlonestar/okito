package com.okito.okito.modules.posts.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.posts.model.entity.PostLike;
import com.okito.okito.modules.posts.model.entity.PostLikeId;
import com.okito.okito.modules.posts.model.param.PostLikeParam;
import com.okito.okito.modules.posts.service.PostLikeService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * post like controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/15 11:06
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/post/like")
public class PostLikeController {

  @Resource
  private PostLikeService postLikeService;

  /**
   * select all postLikes
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(postLikeService.selectAll());
  }

  /**
   * select postLikes by userId
   *
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{userId}")
  public RespResult<?> selectAllByUserId(@NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(postLikeService.selectAllByUserId(userId));
  }

  /**
   * select postLike by id
   *
   * @param postId postId
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/single")
  public RespResult<?> selectById(
      @NonNull @RequestParam(name = "postId") Long postId,
      @NonNull @RequestParam(name = "userId") Long userId) {
    PostLike postLike = postLikeService.selectById(new PostLikeId(postId, userId));
    if (!Objects.equals(postLike, null)) {
      return RespResult.success(postLike);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a postLike
   *
   * @param param postLikeParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody PostLikeParam param) {
    PostLikeId id = new PostLikeId(param.getPostId(), param.getUserId());
    PostLike postLike = postLikeService.selectById(id);
    if (Objects.equals(postLike, null)) {
      postLikeService.add(new PostLike(id, param.getType()));
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.ALREADY_EXIST);
  }

  /**
   * update postLike
   *
   * @param param postLikeParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody PostLikeParam param) {
    PostLikeId id = new PostLikeId(param.getPostId(), param.getUserId());
    PostLike postLike = postLikeService.selectById(id);
    if (!Objects.equals(postLike, null)) {
      if (Objects.equals(postLike.getType(), param.getType())) {
        return RespResult.success("don't need to update");
      } else {
        postLike.setType(param.getType());
        postLikeService.update(postLike);
        return RespResult.success();
      }
    } else {
      PostLike newPostLike = new PostLike();
      newPostLike.setId(id);
      newPostLike.setType(param.getType());
      postLikeService.add(newPostLike);
      return RespResult.success();
    }
  }

  /**
   * delete postLike by id
   *
   * @param postId postId
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "")
  public RespResult<?> deleteById(
      @NonNull @RequestParam(name = "postId") Long postId,
      @NonNull @RequestParam(name = "userId") Long userId) {
    boolean flag = postLikeService.deleteById(new PostLikeId(postId, userId));
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
