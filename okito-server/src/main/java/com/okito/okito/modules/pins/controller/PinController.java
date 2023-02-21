package com.okito.okito.modules.pins.controller;

import com.okito.okito.common.annotation.TimeLog;
import com.okito.okito.common.constant.consts.RespResult;
import com.okito.okito.common.constant.enums.RespStatus;
import com.okito.okito.modules.pins.model.entity.Pin;
import com.okito.okito.modules.pins.model.view.PinView;
import com.okito.okito.modules.pins.service.PinService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;


/**
 * pin controller
 *
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 20:14
 */
@Slf4j
@TimeLog
@RestController
@RequestMapping(path = "/pin")
public class PinController {

  @Resource
  private PinService pinService;

  /**
   * select all pins
   *
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "")
  public RespResult<?> selectAll() {
    return RespResult.success(pinService.selectAll());
  }

  /**
   * select all pins by authorId
   *
   * @param authorId authorId
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/author/{authorId}")
  public RespResult<?> selectAllByAuthorId(@NonNull @PathVariable(name = "authorId") Long authorId) {
    return RespResult.success(pinService.selectAllByAuthorId(authorId));
  }

  /**
   * select all pins by page
   *
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page")
  public RespResult<?> selectAll(
      @NonNull @PageableDefault(sort = "updateTime", direction = Sort.Direction.DESC) Pageable pageable) {
    log.info("page={}&size={}&sort={}", pageable.getPageNumber(),
        pageable.getPageSize(), pageable.getSort());
    return RespResult.success(pinService.selectAll(pageable));
  }

  /**
   * select all pins by page and by authorId
   *
   * @param authorId authorId
   * @param pageable format => page=1&size=5&sort=id,asc
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/page/author/{authorId}")
  public RespResult<?> selectAllByAuthorId(
      @NonNull @PathVariable(name = "authorId") Long authorId,
      @NonNull @PageableDefault(sort = "updateTime", direction = Sort.Direction.DESC) Pageable pageable) {
    log.info("page={}&size={}&sort={}", pageable.getPageNumber(),
        pageable.getPageSize(), pageable.getSort());
    return RespResult.success(pinService.selectAllByAuthorId(authorId, pageable));
  }

  /**
   * select pin by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.GET, path = "/{id}")
  public RespResult<?> selectById(@NonNull @PathVariable(name = "id") Long id) {
    PinView pinView = pinService.selectById(id);
    if (!Objects.equals(pinView, null)) {
      return RespResult.success(pinView);
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * add a pin
   *
   * @param pin pin
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.POST, path = "")
  public RespResult<?> add(@NonNull @RequestBody Pin pin) {
    pinService.add(pin);
    return RespResult.success();
  }

  /**
   * update pin
   *
   * @param pin pin
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.PUT, path = "")
  public RespResult<?> update(@NonNull @RequestBody Pin pin) {
    boolean flag = pinService.update(pin);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

  /**
   * delete pin by id
   *
   * @param id id
   * @return RespResult<?>
   */
  @RequestMapping(method = RequestMethod.DELETE, path = "/{id}")
  public RespResult<?> deleteById(@NonNull @PathVariable(name = "id") Long id) {
    boolean flag = pinService.deleteById(id);
    if (flag) {
      return RespResult.success();
    }
    return RespResult.fail(RespStatus.NOT_EXIST);
  }

}