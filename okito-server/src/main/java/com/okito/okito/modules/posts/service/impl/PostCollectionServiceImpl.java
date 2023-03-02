package com.okito.okito.modules.posts.service.impl;

import com.okito.okito.modules.posts.model.entity.PostCollection;
import com.okito.okito.modules.posts.model.entity.PostCollectionId;
import com.okito.okito.modules.posts.repository.PostCollectionRepository;
import com.okito.okito.modules.posts.service.PostCollectionService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/3/2 20:33
 */
@Service
public class PostCollectionServiceImpl implements PostCollectionService {

  @Resource
  private PostCollectionRepository postCollectionRepository;

  @Override
  public PostCollection selectById(PostCollectionId id) {
    return postCollectionRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(PostCollection collection) {
    postCollectionRepository.save(collection);
    return true;
  }

  @Override
  public boolean update(PostCollection collection) {
    PostCollection postCollection = postCollectionRepository.findById(collection.getId()).orElse(null);
    if (!Objects.equals(postCollection, null)) {
      postCollection.setFollow(collection.getFollow());
      postCollectionRepository.save(postCollection);
    } else {
      postCollectionRepository.save(collection);
    }
    return true;
  }

  @Override
  public boolean deleteById(PostCollectionId id) {
    PostCollection postCollection = postCollectionRepository.findById(id).orElse(null);
    if (!Objects.equals(postCollection, null)) {
      postCollectionRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
