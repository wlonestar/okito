package com.okito.okito.modules.pins.service.impl;

import com.okito.okito.modules.pins.model.entity.Pin;
import com.okito.okito.modules.pins.model.entity.PinLike;
import com.okito.okito.modules.pins.model.entity.PinLikeId;
import com.okito.okito.modules.pins.repository.PinLikeRepository;
import com.okito.okito.modules.pins.repository.PinRepository;
import com.okito.okito.modules.pins.service.PinLikeService;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.repository.UserRepository;
import jakarta.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/8 12:27
 */
@Service
public class PinLikeServiceImpl implements PinLikeService {

  @Resource
  private PinLikeRepository pinLikeRepository;

  @Resource
  private PinRepository pinRepository;

  @Resource
  private UserRepository userRepository;

  @Override
  public List<PinLike> selectAll() {
    return pinLikeRepository.findAll();
  }

  @Override
  public List<PinLike> selectAllByUserId(Long userId) {
    return pinLikeRepository.findAllByUserId(userId);
  }

  @Override
  public Page<PinLike> selectAll(Pageable pageable) {
    return pinLikeRepository.findAll(pageable);
  }

  @Override
  public Page<PinLike> selectAllByUserId(Long userId, Pageable pageable) {
    return pinLikeRepository.findAllByUserIdAndPage(userId, pageable);
  }

  @Override
  public PinLike selectById(PinLikeId id) {
    return pinLikeRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(PinLike pinLike) {
    Pin pin = pinRepository.findById(pinLike.getId().getPinId()).orElse(null);
    User user = userRepository.findById(pinLike.getId().getUserId()).orElse(null);
    boolean flag = !Objects.equals(pin, null) && !Objects.equals(user, null);
    if (flag) {
      pinLikeRepository.save(pinLike);
      return true;
    }
    return false;
  }

  @Override
  public boolean update(PinLike pinLike) {
    PinLike newPinLike = pinLikeRepository.findById(pinLike.getId()).orElse(null);
    if (!Objects.equals(newPinLike, null)) {
      newPinLike.setType(pinLike.getType());
      pinLikeRepository.save(newPinLike);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(PinLikeId id) {
    PinLike pinLike = pinLikeRepository.findById(id).orElse(null);
    if (!Objects.equals(pinLike, null)) {
      pinLikeRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
