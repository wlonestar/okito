package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.TagFollow;
import com.okito.okito.modules.posts.model.entity.TagFollowId;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/24 9:54
 */
public interface TagFollowService {

  TagFollow selectById(TagFollowId id);

  boolean add(TagFollow tagFollow);

  boolean update(TagFollow tagFollow);

}
