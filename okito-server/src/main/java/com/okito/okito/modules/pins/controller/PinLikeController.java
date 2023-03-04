package com.okito.okito.modules.pins.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.pins.model.entity.PinLike;
import com.okito.okito.modules.pins.model.entity.PinLikeId;
import com.okito.okito.modules.pins.model.param.PinLikeParam;
import com.okito.okito.modules.pins.service.PinLikeService;
import com.okito.okito.modules.pins.service.PinService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
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

  @Resource
  private PinService pinService;

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
   * select pinLikes by userId
   *
   * @param userId userId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{userId}")
  public RespResult<?> selectAllByUserId(@NonNull @PathVariable(name = "userId") Long userId) {
    return RespResult.success(pinLikeService.selectAllByUserId(userId));
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
      @NonNull @RequestParam(name = "pinId") Long pinId,
      @NonNull @RequestParam(name = "userId") Long userId) {
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
    if (Objects.equals(pinLike, null)) {
      pinLikeService.add(new PinLike(id, param.getType()));
      pinService.updatePinViewNum(param.getPinId());
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.ALREADY_EXIST);
  }

  /**
   * update a pinLike
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
        pinService.updatePinViewNum(param.getPinId());
        return RespResult.success();
      }
    } else {
      PinLike newPinLike = new PinLike();
      newPinLike.setId(id);
      newPinLike.setType(param.getType());
      pinLikeService.add(newPinLike);
      pinService.updatePinViewNum(param.getPinId());
      return RespResult.success();
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
      @NonNull @RequestParam(name = "pinId") Long pinId,
      @NonNull @RequestParam(name = "userId") Long userId) {
    boolean flag = pinLikeService.deleteById(new PinLikeId(pinId, userId));
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}
