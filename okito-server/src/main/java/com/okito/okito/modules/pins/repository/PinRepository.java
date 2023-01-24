package com.okito.okito.modules.pins.repository;

import com.okito.okito.modules.pins.model.entity.Pin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:57
 */
@Repository
public interface PinRepository extends JpaRepository<Pin, Long> {
}
