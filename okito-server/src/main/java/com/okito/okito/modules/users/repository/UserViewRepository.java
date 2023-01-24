package com.okito.okito.modules.users.repository;

import com.okito.okito.common.repository.ReadOnlyRepository;
import com.okito.okito.modules.users.model.view.UserView;
import org.springframework.stereotype.Repository;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/17 18:49
 */
@Repository
public interface UserViewRepository extends ReadOnlyRepository<UserView, Long> {
}
