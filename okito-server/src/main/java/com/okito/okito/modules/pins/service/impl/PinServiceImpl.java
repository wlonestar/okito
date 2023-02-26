package com.okito.okito.modules.pins.service.impl;

import com.okito.okito.modules.pins.model.entity.Pin;
import com.okito.okito.modules.pins.model.entity.PinLike;
import com.okito.okito.modules.pins.model.view.PinView;
import com.okito.okito.modules.pins.repository.PinLikeRepository;
import com.okito.okito.modules.pins.repository.PinRepository;
import com.okito.okito.modules.pins.repository.PinViewRepository;
import com.okito.okito.modules.pins.service.PinService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:57
 */
@Slf4j
@Service
public class PinServiceImpl implements PinService {

  @Resource
  private PinRepository pinRepository;

  @Resource
  private PinViewRepository pinViewRepository;

  @Resource
  private PinLikeRepository pinLikeRepository;

  @Override
  public List<PinView> selectAll() {
    return pinViewRepository.findAll();
  }

  @Override
  public List<PinView> selectAllByAuthorId(Long authorId) {
    return pinViewRepository.findAllByAuthorId(authorId);
  }

  @Override
  public Page<PinView> selectAll(Pageable pageable) {
    return pinViewRepository.findAll(pageable);
  }

  @Override
  public Page<PinView> selectAllByAuthorId(Long authorId, Pageable pageable) {
    return pinViewRepository.findAllByAuthorId(authorId, pageable);
  }

  @Override
  public PinView selectById(Long id) {
    return pinViewRepository.findById(id).orElse(null);
  }

  @Override
  public long countByAuthorId(Long authorId) {
    return pinRepository.countByAuthorId(authorId);
  }

  @Override
  public boolean add(Pin pin) {
    pinRepository.save(pin);
    return true;
  }

  @Override
  public boolean update(Pin pin) {
    Pin newPin = pinRepository.findById(pin.getId()).orElse(null);
    if (!Objects.equals(newPin, null)) {
      newPin.setContent(pin.getContent());
      newPin.setUpdateTime(pin.getUpdateTime());
      pinRepository.save(newPin);
      return true;
    }
    return false;
  }

  @Override
  public void updatePinViewNum(Long pinId) {
    Pin pin = pinRepository.findById(pinId).orElse(null);
    if (!Objects.equals(pin, null)) {
      pin.setViewNum(pin.getViewNum() + 1);
      pinRepository.save(pin);
    }
  }

  @Override
  public boolean deleteById(Long id) {
    Pin pin = pinRepository.findById(id).orElse(null);
    if (!Objects.equals(pin, null)) {
      // delete cascade
      List<PinLike> pinLikes = pinLikeRepository.findAllByPinId(id);
      pinLikeRepository.deleteAll(pinLikes);
      pinRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
