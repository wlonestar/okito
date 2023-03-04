package com.okito.okito.modules.posts.service.impl;

import com.okito.okito.modules.posts.model.entity.Collection;
import com.okito.okito.modules.posts.repository.CollectionRepository;
import com.okito.okito.modules.posts.repository.CollectionRepositoryCustom;
import com.okito.okito.modules.posts.repository.PostCollectionRepository;
import com.okito.okito.modules.posts.service.CollectionService;
import com.okito.okito.modules.users.repository.UserCollectionFollowRepository;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:37
 */
@Slf4j
@Service
public class CollectionServiceImpl implements CollectionService {

  @Resource
  private CollectionRepository collectionRepository;

  @Resource
  private CollectionRepositoryCustom collectionRepositoryCustom;

  @Resource
  private PostCollectionRepository postCollectionRepository;

  @Resource
  private UserCollectionFollowRepository userCollectionFollowRepository;

  @Override
  public List<Collection> selectAll() {
    return collectionRepository.findAll();
  }

  @Override
  public List<Collection> selectAllByAuthorId(Long authorId) {
    return collectionRepository.findAllByAuthorId(authorId);
  }

  @Override
  public List<Collection> selectAllByFollowerId(Long followerId) {
    return collectionRepository.findAllByFollowerId(followerId);
  }

  @Override
  public Collection selectById(Long id) {
    return collectionRepository.findById(id).orElse(null);
  }

  @Override
  public long countByAuthorId(Long authorId) {
    return collectionRepository.countAllByAuthorId(authorId);
  }

  @Override
  public long countPostsByCollectionId(Long collectionId) {
    return postCollectionRepository.countByCollectionId(collectionId);
  }

  @Override
  public long countFollowNumByCollectionId(Long collectId) {
    return userCollectionFollowRepository.countFollowNumByCollectionId(collectId);
  }

  @Override
  public Collection add(Collection collection) {
    return collectionRepositoryCustom.add(collection);
  }

  @Override
  public boolean update(Collection collection) {
    Collection newCollection = collectionRepository.findById(collection.getId()).orElse(null);
    if (!Objects.equals(newCollection, null)) {
      newCollection.setName(collection.getName());
      newCollection.setDescription(collection.getDescription());
      newCollection.setType(collection.getType());
      newCollection.setCreateTime(collection.getCreateTime());
      newCollection.setUpdateTime(collection.getUpdateTime());
      collectionRepository.save(newCollection);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteById(Long id) {
    Collection collection = collectionRepository.findById(id).orElse(null);
    if (!Objects.equals(collection, null)) {
      collectionRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
