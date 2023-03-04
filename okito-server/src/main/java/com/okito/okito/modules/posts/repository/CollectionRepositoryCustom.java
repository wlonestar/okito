package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.Collection;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/3/4 19:49
 */
public interface CollectionRepositoryCustom {

  long nextVal();

  Collection add(Collection collection);

}
