package com.okito.okito.modules.pins.service;

import com.okito.okito.modules.pins.model.entity.Pin;
import com.okito.okito.modules.pins.model.view.PinView;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:57
 */
public interface PinService {

  List<PinView> selectRecommend100();

  List<PinView> selectHot100();

  List<PinView> searchByKeywords(String keywords);

  List<PinView> selectAll();

  List<PinView> selectAllByAuthorId(Long authorId);

  List<PinView> selectAllByUserFollowed(Long userId);

  PinView selectById(Long id);

  long countByAuthorId(Long authorId);

  boolean add(Pin pin);

  boolean update(Pin pin);

  void updatePinViewNum(Long pinId);

  boolean deleteById(Long id);

}
