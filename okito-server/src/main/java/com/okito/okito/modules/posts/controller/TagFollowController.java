package com.okito.okito.modules.posts.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.posts.model.entity.TagFollow;
import com.okito.okito.modules.posts.model.entity.TagFollowId;
import com.okito.okito.modules.posts.model.param.TagFollowParam;
import com.okito.okito.modules.posts.service.TagFollowService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * tag follow controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/24 9:53
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/tag/follow")
public class TagFollowController {

  @Resource
  private TagFollowService tagFollowService;

  /**
   * select tagFollow by id
   *
   * @param userId user id
   * @param tagId tag id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/single")
  public RespResult<?> selectById(
    @NonNull @RequestParam(name = "userId") Long userId,
    @NonNull @RequestParam(name = "tagId") Long tagId) {
    TagFollowId id = new TagFollowId(tagId, userId);
    TagFollow follow = tagFollowService.selectById(id);
    if (!Objects.equals(follow, null)) {
      return RespResult.success(follow);
    }
    return RespResult.success(new TagFollow(id, false));
  }

  /**
   * add a TagFollow
   *
   * @param param TagFollowParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody TagFollowParam param) {
    TagFollowId id = new TagFollowId(param.getTagId(), param.getUserId());
    TagFollow collection = tagFollowService.selectById(id);
    if (!Objects.equals(collection, null)) {
      tagFollowService.add(new TagFollow(id, param.getFollow()));
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.ALREADY_EXIST);
  }

  /**
   * update tag follow param
   *
   * @param param tag follow param
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody TagFollowParam param) {
    TagFollowId id = new TagFollowId(param.getTagId(), param.getUserId());
    TagFollow column = tagFollowService.selectById(id);
    if (!Objects.equals(column, null)) {
      column.setFollow(param.getFollow());
      tagFollowService.update(column);
    } else {
      column = new TagFollow(id, param.getFollow());
      tagFollowService.add(column);
    }
    return RespResult.success(column);
  }

}
