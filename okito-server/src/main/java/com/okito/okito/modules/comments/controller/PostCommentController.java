package com.okito.okito.modules.comments.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.comments.model.entity.PostComment;
import com.okito.okito.modules.comments.model.view.PostCommentView;
import com.okito.okito.modules.comments.service.PostCommentService;
import com.okito.okito.modules.posts.service.PostService;
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
 * post comment controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/11 21:13
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/comment/post")
public class PostCommentController {

  @Resource
  private PostCommentService postCommentService;

  @Resource
  private PostService postService;

  @Resource
  private UserService userService;

  /**
   * select all postComments
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(postCommentService.selectAll());
  }

  /**
   * select all postComments by postId
   *
   * @param postId postId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{postId}")
  public RespResult<?> selectAllByPostId(@NonNull @PathVariable(name = "postId") Long postId) {
    return RespResult.success(postCommentService.selectAllByPostId(postId));
  }

  /**
   * select all postComments by authorId
   *
   * @param authorId authorId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{authorId}")
  public RespResult<?> selectAllByAuthorId(@NonNull @PathVariable(name = "authorId") Long authorId) {
    return RespResult.success(postCommentService.selectAllByAuthorId(authorId));
  }

  /**
   * select secondary postComments by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/secondary/{id}")
  public RespResult<?> selectSecondaryComments(@NonNull @PathVariable(name = "id") Long id) {
    return RespResult.success(postCommentService.selectSecondaryComments(id));
  }

  /**
   * select all postComments by page
   *
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page")
  public RespResult<?> selectAll(
      @NonNull @PageableDefault(sort = "uploadTime", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(postCommentService.selectAll(pageable));
  }

  /**
   * select all postComments by postId and page
   *
   * @param postId   postId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/{postId}")
  public RespResult<?> selectAllByPostId(
      @NonNull @PathVariable(name = "postId") Long postId,
      @NonNull @PageableDefault(sort = "uploadTime", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(postCommentService.selectAllByPostId(postId, pageable));
  }

  /**
   * select all postComments by authorId and page
   *
   * @param authorId authorId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/{authorId}")
  public RespResult<?> selectAllByAuthorId(
      @NonNull @PathVariable(name = "authorId") Long authorId,
      @NonNull @PageableDefault(sort = "uploadTime", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(postCommentService.selectAllByAuthorId(authorId, pageable));
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
    return RespResult.success(postCommentService.selectSecondaryComments(id, pageable));
  }

  /**
   * select postComment By id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{id}")
  public RespResult<?> selectById(@NonNull @PathVariable(name = "id") Long id) {
    PostCommentView postCommentView = postCommentService.selectById(id);
    if (!Objects.equals(postCommentView, null)) {
      return RespResult.success(postCommentView);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a postComment
   *
   * @param postComment postComment
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody PostComment postComment) {
    boolean flag = !Objects.equals(postService.selectById(postComment.getPostId()), null) &&
        !Objects.equals(userService.selectById(postComment.getAuthorId()), null);
    if (flag) {
      postCommentService.add(postComment);
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
    boolean flag = postCommentService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}