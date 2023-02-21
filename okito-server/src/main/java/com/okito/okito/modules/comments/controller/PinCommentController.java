package com.okito.okito.modules.comments.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.comments.model.entity.PinComment;
import com.okito.okito.modules.comments.model.view.PinCommentView;
import com.okito.okito.modules.comments.service.PinCommentService;
import com.okito.okito.modules.pins.service.PinService;
import com.okito.okito.modules.users.service.UserService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * pin comment controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 21:13
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/pin/comment")
public class PinCommentController {

  @Resource
  private PinCommentService pinCommentService;

  @Resource
  private PinService pinService;

  @Resource
  private UserService userService;

  /**
   * select all pinComments
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(pinCommentService.selectAll());
  }

  /**
   * select all pinComments by pinId
   *
   * @param pinId pinId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/pin/{pinId}")
  public RespResult<?> selectAllByPinId(@NonNull @PathVariable(name = "pinId") Long pinId) {
    return RespResult.success(pinCommentService.selectAllByPinId(pinId));
  }

  /**
   * select all pinComments by authorId
   *
   * @param authorId authorId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/author/{authorId}")
  public RespResult<?> selectAllByAuthorId(@NonNull @PathVariable(name = "authorId") Long authorId) {
    return RespResult.success(pinCommentService.selectAllByAuthorId(authorId));
  }

  /**
   * select secondary PinComments by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/secondary/{id}")
  public RespResult<?> selectSecondaryComments(@NonNull @PathVariable(name = "id") Long id) {
    return RespResult.success(pinCommentService.selectSecondaryComments(id));
  }

  /**
   * select all pinComments by page
   *
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page")
  public RespResult<?> selectAll(
      @NonNull @PageableDefault(sort = "uploadTime", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(pinCommentService.selectAll(pageable));
  }

  /**
   * select all pinComments by pinId and page
   *
   * @param pinId    pinId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/pin/{pinId}")
  public RespResult<?> selectAllByPinId(
      @NonNull @PathVariable(name = "pinId") Long pinId,
      @NonNull @PageableDefault(sort = "uploadTime", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(pinCommentService.selectAllByPinId(pinId, pageable));
  }

  /**
   * select all pinComments by authorId and page
   *
   * @param authorId authorId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/author/{authorId}")
  public RespResult<?> selectAllByAuthorId(
      @NonNull @PathVariable(name = "authorId") Long authorId,
      @NonNull @PageableDefault(sort = "uploadTime", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(pinCommentService.selectAllByAuthorId(authorId, pageable));
  }

  /**
   * select secondary comments by id and page
   *
   * @param id       id
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/secondary/{id}")
  public RespResult<?> selectSecondaryComments(
      @NonNull @PathVariable(name = "id") Long id,
      @NonNull @PageableDefault(sort = "uploadTime", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(pinCommentService.selectSecondaryComments(id, pageable));
  }

  /**
   * count pinComments by pin id
   *
   * @param pinId pin id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/count/pin/{pinId}")
  public RespResult<?> countByPinId(@NonNull @PathVariable(name = "pinId") Long pinId) {
    long count = pinCommentService.countByPinId(pinId);
    return RespResult.success(count);
  }

  /**
   * select pinComment By id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{id}")
  public RespResult<?> selectById(@NonNull @PathVariable(name = "id") Long id) {
    PinCommentView pinCommentView = pinCommentService.selectById(id);
    if (!Objects.equals(pinCommentView, null)) {
      return RespResult.success(pinCommentView);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a pinComment
   *
   * @param pinComment pinComment
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody PinComment pinComment) {
    boolean flag = !Objects.equals(pinService.selectById(pinComment.getPinId()), null) &&
        !Objects.equals(userService.selectById(pinComment.getAuthorId()), null);
    if (flag) {
      pinCommentService.add(pinComment);
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.PARAM_ERROR);
  }

  /**
   * delete pinComment By id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "/{id}")
  public RespResult<?> deleteById(@NonNull @PathVariable(name = "id") Long id) {
    boolean flag = pinCommentService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
