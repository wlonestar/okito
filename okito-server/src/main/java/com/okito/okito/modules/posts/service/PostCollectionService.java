package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.PostCollection;
import com.okito.okito.modules.posts.model.entity.PostCollectionId;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/3/2 20:23
 */
public interface PostCollectionService {

  PostCollection selectById(PostCollectionId id);

  boolean add(PostCollection collection);

  boolean update(PostCollection collection);

  boolean deleteById(PostCollectionId id);

}
