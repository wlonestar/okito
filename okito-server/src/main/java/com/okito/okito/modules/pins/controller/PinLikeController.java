package com.okito.okito.modules.pins.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.pins.model.entity.PinLike;
import com.okito.okito.modules.pins.model.entity.PinLikeId;
import com.okito.okito.modules.pins.model.param.PinLikeParam;
import com.okito.okito.modules.pins.service.PinLikeService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

/**
 * pin like controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/8 12:40
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/pin/like")
public class PinLikeController {

  @Resource
  private PinLikeService pinLikeService;

  /**
   * select all pinLikes
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(pinLikeService.selectAll());
  }

  /**
   * select all pinLikes by userId
   *
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{userId}")
  public RespResult<?> selectAllByUserId(@NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(pinLikeService.selectAllByUserId(userId));
  }

  /**
   * select all pinLikes by page
   *
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page")
  public RespResult<?> selectAll(
      @NonNull @PageableDefault(sort = "type", direction = Sort.Direction.DESC) Pageable pageable) {
    log.info("page={}&size={}&sort={}", pageable.getPageNumber(), pageable.getPageSize(), pageable.getSort());
    return RespResult.success(pinLikeService.selectAll(pageable));
  }

  /**
   * select all pinLikes by userId and page
   *
   * @param userId   userId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/{userId}")
  public RespResult<?> selectAllByUserId(
      @NonNull @PathVariable(name = "userId") Long userId,
      @NonNull @PageableDefault(sort = "type", direction = Sort.Direction.DESC) Pageable pageable) {
    log.info("page={}&size={}&sort={}", pageable.getPageNumber(), pageable.getPageSize(), pageable.getSort());
    return RespResult.success(pinLikeService.selectAllByUserId(userId, pageable));
  }

  /**
   * select pinLike by id
   *
   * @param pinId  pinId
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/single")
  public RespResult<?> selectById(
      @NonNull @RequestParam(name = "pinId") Long pinId, @NonNull @RequestParam(name = "userId") Long userId) {
    PinLike pinLike = pinLikeService.selectById(new PinLikeId(pinId, userId));
    if (!Objects.equals(pinLike, null)) {
      return RespResult.success(pinLike);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a pinLike
   *
   * @param param pinLikeParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody PinLikeParam param) {
    PinLikeId id = new PinLikeId(param.getPinId(), param.getUserId());
    PinLike pinLike = pinLikeService.selectById(id);
    log.info("{}", pinLike);
    if (Objects.equals(pinLike, null)) {
      pinLikeService.add(new PinLike(id, param.getType()));
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.ALREADY_EXIST);
  }

  /**
   * update a pinLike
   * TODO: have not been tested
   *
   * @param param pinLikeParam
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody PinLikeParam param) {
    PinLikeId id = new PinLikeId(param.getPinId(), param.getUserId());
    PinLike pinLike = pinLikeService.selectById(id);
    if (!Objects.equals(pinLike, null)) {
      if (Objects.equals(pinLike.getType(), param.getType())) {
        return RespResult.success("don't need to update");
      } else {
        pinLike.setType(param.getType());
        pinLikeService.update(pinLike);
        return RespResult.success("update success");
      }
    } else {
      PinLike newPinLike = new PinLike();
      newPinLike.setId(id);
      newPinLike.setType(param.getType());
      pinLikeService.add(newPinLike);
      return RespResult.success("update success");
    }
  }

  /**
   * delete pinLike by id
   *
   * @param pinId  pinId
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "")
  public RespResult<?> deleteById(
      @NonNull @RequestParam(name = "pinId") Long pinId, @NonNull @RequestParam(name = "userId") Long userId) {
    boolean flag = pinLikeService.deleteById(new PinLikeId(pinId, userId));
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
