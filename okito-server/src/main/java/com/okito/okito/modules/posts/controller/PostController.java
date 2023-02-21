package com.okito.okito.modules.posts.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.posts.model.entity.Post;
import com.okito.okito.modules.posts.model.view.PostView;
import com.okito.okito.modules.posts.service.PostService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

/**
 * post controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 10:35
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/post")
public class PostController {

  @Resource
  private PostService postService;

  /**
   * select all posts
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(postService.selectAll());
  }

  /**
   * select posts by cateId
   *
   * @param cateId cateId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/cate/{cateId}")
  public RespResult<?> selectAllByCateId(@NonNull @PathVariable(name = "cateId") Long cateId) {
    return RespResult.success(postService.selectAllByCateId(cateId));
  }

  /**
   * select posts by tagId
   *
   * @param tagId tagId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/tag/{tagId}")
  public RespResult<?> selectAllByTagId(@NonNull @PathVariable(name = "tagId") Long tagId) {
    return RespResult.success(postService.selectAllByTagId(tagId));
  }

  /**
   * select posts by collectionId
   *
   * @param collectionId collectionId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/collection/{collectionId}")
  public RespResult<?> selectAllByCollectionId(@NonNull @PathVariable(name = "collectionId") Long collectionId) {
    return RespResult.success(postService.selectAllByCollectionId(collectionId));
  }

  /**
   * select posts by columnId
   *
   * @param columnId columnId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/column/{columnId}")
  public RespResult<?> selectAllByColumnId(@NonNull @PathVariable(name = "columnId") Long columnId) {
    return RespResult.success(postService.selectAllByColumnId(columnId));
  }

  /**
   * select posts by authorId
   *
   * @param authorId authorId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/author/{authorId}")
  public RespResult<?> selectAllByAuthorId(@NonNull @PathVariable(name = "authorId") Long authorId) {
    return RespResult.success(postService.selectAllByAuthorId(authorId));
  }

  /**
   * select posts by page
   *
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page")
  public RespResult<?> selectAll(
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(postService.selectAll(pageable));
  }

  /**
   * select posts by cateId and page
   *
   * @param cateId   cateId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/cate/{cateId}")
  public RespResult<?> selectAllByCateId(
      @NonNull @PathVariable(name = "cateId") Long cateId,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(postService.selectAllByCateId(cateId, pageable));
  }

  /**
   * select posts by tagId and page
   *
   * @param tagId    tagId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/tag/{tagId}")
  public RespResult<?> selectAllByTagId(
      @NonNull @PathVariable(name = "tagId") Long tagId,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(postService.selectAllByTagId(tagId, pageable));
  }

  /**
   * select posts by collectionId and page
   *
   * @param collectionId collectionId
   * @param pageable     format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/collection/{collectionId}")
  public RespResult<?> selectAllByCollectionId(
      @NonNull @PathVariable(name = "collectionId") Long collectionId,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(postService.selectAllByCollectionId(collectionId, pageable));
  }

  /**
   * select posts by columnId and page
   *
   * @param columnId columnId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/column/{columnId}")
  public RespResult<?> selectAllByColumnId(
      @NonNull @PathVariable(name = "columnId") Long columnId,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(postService.selectAllByColumnId(columnId, pageable));
  }

  /**
   * select posts by authorId and page
   *
   * @param authorId authorId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/author/{authorId}")
  public RespResult<?> selectAllByAuthorId(
      @NonNull @PathVariable(name = "authorId") Long authorId,
      @NonNull @PageableDefault(sort = "name", direction = Sort.Direction.DESC) Pageable pageable) {
    return RespResult.success(postService.selectAllByAuthorId(authorId, pageable));
  }

  /**
   * select post by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{id}")
  public RespResult<?> selectById(@NonNull @PathVariable(name = "id") Long id) {
    PostView postView = postService.selectById(id);
    if (!Objects.equals(postView, null)) {
      postService.updatePostViewNum(id);
      return RespResult.success(postView);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a post
   *
   * @param post post
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody Post post) {
    postService.add(post);
    return RespResult.success();
  }

  /**
   * update post
   *
   * @param post post
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody Post post) {
    boolean flag = postService.update(post);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * delete post by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "/{id}")
  public RespResult<?> deleteById(@NonNull @PathVariable(name = "id") Long id) {
    boolean flag = postService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * delete posts by ids
   *
   * @param ids list of id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "")
  public RespResult<?> deleteBatch(@RequestParam(name = "ids") List<Long> ids) {
    postService.deleteBatch(ids);
    return RespResult.success();
  }

}
