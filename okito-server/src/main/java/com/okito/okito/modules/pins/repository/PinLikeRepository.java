package com.okito.okito.modules.pins.repository;

import com.okito.okito.modules.pins.model.entity.PinLike;
import com.okito.okito.modules.pins.model.entity.PinLikeId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/8 12:27
 */
@Repository
public interface PinLikeRepository extends JpaRepository<PinLike, PinLikeId> {

  @Query(value = "select p from PinLike p where p.id.userId = ?1")
  List<PinLike> findAllByUserId(Long userId);

  @Query(value = "select p from PinLike p where p.id.pinId = ?1")
  List<PinLike> findAllByPinId(Long pinId);

  @Query(value = "select p from PinLike p where p.id.userId = ?1")
  Page<PinLike> findAllByUserIdAndPage(Long userId, Pageable pageable);

}
