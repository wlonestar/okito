package com.okito.okito.modules.pins.repository;

import com.okito.okito.modules.pins.model.entity.Pin;
import com.okito.okito.modules.pins.model.view.PinView;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/28 10:37
 */
public interface PinRepositoryCustom {

  long nextVal();

  List<PinView> searchByKeywords(String keywords);

  Pin add(Pin pin);

}
