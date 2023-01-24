package com.okito.okito.modules.pins.service;

import com.okito.okito.modules.pins.model.entity.PinLike;
import com.okito.okito.modules.pins.model.entity.PinLikeId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/8 12:27
 */
public interface PinLikeService {

  List<PinLike> selectAll();

  List<PinLike> selectAllByUserId(Long userId);

  Page<PinLike> selectAll(Pageable pageable);

  Page<PinLike> selectAllByUserId(Long userId, Pageable pageable);

  PinLike selectById(PinLikeId id);

  boolean add(PinLike pinLike);

  boolean update(PinLike pinLike);

  boolean deleteById(PinLikeId id);

}
