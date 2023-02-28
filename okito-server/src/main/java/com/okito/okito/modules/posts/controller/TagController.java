package com.okito.okito.modules.posts.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.posts.model.entity.Tag;
import com.okito.okito.modules.posts.service.TagService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * tag controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 13:09
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/tag")
public class TagController {

  @Resource
  private TagService tagService;

  /**
   * select all tags
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(tagService.selectAll());
  }

  /**
   * select tags by postId
   *
   * @param postId postId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/post/{postId}")
  public RespResult<?> selectAllByPostId(@PathVariable(name = "postId") Long postId) {
    return RespResult.success(tagService.selectAllByPostId(postId));
  }

  /**
   * select tags by followerId
   *
   * @param followerId followerId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/follower/{followerId}")
  public RespResult<?> selectAllByFollowerId(@PathVariable(name = "followerId") Long followerId) {
    return RespResult.success(tagService.selectAllByFollowerId(followerId));
  }

  /**
   * select tag by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{id}")
  public RespResult<?> selectById(@NonNull @PathVariable(name = "id") Long id) {
    Tag tag = tagService.selectById(id);
    if (!Objects.equals(tag, null)) {
      return RespResult.success(tag);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a tag
   *
   * @param tag tag
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody Tag tag) {
    tagService.add(tag);
    return RespResult.success();
  }

  /**
   * update tag
   *
   * @param tag tag
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody Tag tag) {
    boolean flag = tagService.update(tag);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * delete tag by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "/{id}")
  public RespResult<?> deleteById(@NonNull @PathVariable(name = "id") Long id) {
    boolean flag = tagService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
