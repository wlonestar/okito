package com.okito.okito.modules.posts.service.impl;

import com.okito.okito.modules.posts.model.entity.TagFollow;
import com.okito.okito.modules.posts.model.entity.TagFollowId;
import com.okito.okito.modules.posts.repository.TagFollowRepository;
import com.okito.okito.modules.posts.service.TagFollowService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/24 9:54
 */
@Service
public class TagFollowServiceImpl implements TagFollowService {

  @Resource
  private TagFollowRepository tagFollowRepository;

  @Override
  public TagFollow selectById(TagFollowId id) {
    return tagFollowRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(TagFollow tagFollow) {
    tagFollowRepository.save(tagFollow);
    return true;
  }

  @Override
  public boolean update(TagFollow tagFollow) {
    TagFollow follow = tagFollowRepository.findById(tagFollow.getId()).orElse(null);
    if (!Objects.equals(follow, null)) {
      follow.setFollow(tagFollow.getFollow());
      tagFollowRepository.save(follow);
      return true;
    }
    return false;
  }

}
