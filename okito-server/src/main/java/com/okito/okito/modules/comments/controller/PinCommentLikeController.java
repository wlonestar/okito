package com.okito.okito.modules.comments.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.comments.model.entity.PinCommentLike;
import com.okito.okito.modules.comments.model.entity.PinCommentLikeId;
import com.okito.okito.modules.comments.model.param.PinCommentLikeParam;
import com.okito.okito.modules.comments.service.PinCommentLikeService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * pin comment like controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 23:02
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/comment/pin/like")
public class PinCommentLikeController {

  @Resource
  private PinCommentLikeService pinCommentLikeService;

  /**
   * select all pinCommentLikes
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(pinCommentLikeService.selectAll());
  }

  /**
   * select all pinCommentLikes by userId
   *
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{userId}")
  public RespResult<?> selectAllByUserId(@NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(pinCommentLikeService.selectAllByUserId(userId));
  }

  /**
   * select all pinCommentLikes by page
   *
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page")
  public RespResult<?> selectAllByPage(
      @NonNull @PageableDefault(sort = "type", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(pinCommentLikeService.selectAll(pageable));
  }

  /**
   * select all pinCommentLikes by userId and page
   *
   * @param userId   userId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/{userId}")
  public RespResult<?> selectAllByUserIdAndPage(
      @NonNull @PathVariable(name = "userId") Long userId,
      @NonNull @PageableDefault(sort = "type", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(pinCommentLikeService.selectAllByUserId(userId, pageable));
  }

  /**
   * select pinCommentLike by id
   *
   * @param commentId commentId
   * @param userId    userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/single")
  public RespResult<?> selectById(
      @NonNull @RequestParam(name = "commentId") Long commentId, @NonNull @RequestParam(name = "userId") Long userId) {
    PinCommentLike commentLike = pinCommentLikeService.selectById(new PinCommentLikeId(commentId, userId));
    if (!Objects.equals(commentLike, null)) {
      return RespResult.success(commentLike);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a pinCommentLike
   *
   * @param param pinCommentLikeParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody PinCommentLikeParam param) {
    PinCommentLikeId commentLikeId = new PinCommentLikeId(param.getCommentId(), param.getUserId());
    PinCommentLike commentLike = pinCommentLikeService.selectById(commentLikeId);
    if (Objects.equals(commentLike, null)) {
      pinCommentLikeService.add(new PinCommentLike(commentLikeId, param.getType()));
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.ALREADY_EXIST);
  }

  /**
   * update a pinCommentLike
   *
   * @param param pinCommentLikeParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody PinCommentLikeParam param) {
    PinCommentLikeId id = new PinCommentLikeId(param.getCommentId(), param.getUserId());
    PinCommentLike commentLike = pinCommentLikeService.selectById(id);
    if (!Objects.equals(commentLike, null)) {
      if (Objects.equals(commentLike.getType(), param.getType())) {
        return RespResult.success("don't need to update");
      } else {
        commentLike.setType(param.getType());
        pinCommentLikeService.update(commentLike);
        return RespResult.success("update success");
      }
    } else {
      PinCommentLike newCommentLike = new PinCommentLike();
      newCommentLike.setId(id);
      newCommentLike.setType(param.getType());
      pinCommentLikeService.add(newCommentLike);
      return RespResult.success("update success");
    }
  }

  /**
   * delete pinCommentLike by id
   *
   * @param commentId commentId
   * @param userId    userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "")
  public RespResult<?> deleteById(
      @NonNull @RequestParam(name = "commentId") Long commentId,
      @NonNull @RequestParam(name = "userId") Long userId) {
    boolean flag = pinCommentLikeService.deleteById(new PinCommentLikeId(commentId, userId));
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
