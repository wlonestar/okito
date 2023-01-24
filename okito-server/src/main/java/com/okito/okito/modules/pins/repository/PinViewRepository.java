package com.okito.okito.modules.pins.repository;

import com.okito.okito.common.repository.ReadOnlyRepository;
import com.okito.okito.modules.pins.model.view.PinView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 20:07
 */
@Repository
public interface PinViewRepository extends ReadOnlyRepository<PinView, Long> {

  List<PinView> findAllByAuthorId(Long authorId);

  Page<PinView> findAllByAuthorId(Long authorId, Pageable pageable);

}
