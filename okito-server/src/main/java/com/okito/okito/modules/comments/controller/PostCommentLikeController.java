package com.okito.okito.modules.comments.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.comments.model.entity.PostCommentLike;
import com.okito.okito.modules.comments.model.entity.PostCommentLikeId;
import com.okito.okito.modules.comments.model.param.PostCommentLikeParam;
import com.okito.okito.modules.comments.service.PostCommentLikeService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * post comment like controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 23:02
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/post/comment/like")
public class PostCommentLikeController {

  @Resource
  private PostCommentLikeService postCommentLikeService;

  /**
   * select all postCommentLikes
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(postCommentLikeService.selectAll());
  }

  /**
   * select postCommentLikes by userId
   *
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{userId}")
  public RespResult<?> selectAllByUserId(@NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(postCommentLikeService.selectAllByUserId(userId));
  }

  /**
   * select postCommentLike by id
   *
   * @param commentId commentId
   * @param userId    userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/single")
  public RespResult<?> selectById(
      @NonNull @RequestParam(name = "commentId") Long commentId,
      @NonNull @RequestParam(name = "userId") Long userId) {
    PostCommentLikeId id = new PostCommentLikeId(commentId, userId);
    PostCommentLike commentLike = postCommentLikeService.selectById(id);
    if (!Objects.equals(commentLike, null)) {
      return RespResult.success(commentLike);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a postCommentLike
   *
   * @param param postCommentLikeParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody PostCommentLikeParam param) {
    PostCommentLikeId id = new PostCommentLikeId(param.getCommentId(), param.getUserId());
    PostCommentLike commentLike = postCommentLikeService.selectById(id);
    if (Objects.equals(commentLike, null)) {
      postCommentLikeService.add(new PostCommentLike(id, param.getType()));
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.ALREADY_EXIST);
  }

  /**
   * update a postCommentLike
   *
   * @param param postCommentLikeParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody PostCommentLikeParam param) {
    PostCommentLikeId id = new PostCommentLikeId(param.getCommentId(), param.getUserId());
    PostCommentLike commentLike = postCommentLikeService.selectById(id);
    if (!Objects.equals(commentLike, null)) {
      if (Objects.equals(commentLike.getType(), param.getType())) {
        return RespResult.success("don't need to update");
      } else {
        commentLike.setType(param.getType());
        postCommentLikeService.update(commentLike);
        return RespResult.success("update success");
      }
    } else {
      PostCommentLike newCommentLike = new PostCommentLike();
      newCommentLike.setId(id);
      newCommentLike.setType(param.getType());
      postCommentLikeService.add(newCommentLike);
      return RespResult.success("update success");
    }
  }

  /**
   * delete postCommentLike by id
   *
   * @param commentId commentId
   * @param userId    userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "")
  public RespResult<?> deleteById(
      @NonNull @RequestParam(name = "commentId") Long commentId,
      @NonNull @RequestParam(name = "userId") Long userId) {
    boolean flag = postCommentLikeService.deleteById(new PostCommentLikeId(commentId, userId));
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
