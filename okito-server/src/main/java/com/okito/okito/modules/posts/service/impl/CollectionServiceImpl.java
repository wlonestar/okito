package com.okito.okito.modules.posts.service.impl;

import com.okito.okito.modules.posts.model.entity.Collection;
import com.okito.okito.modules.posts.repository.CollectionRepository;
import com.okito.okito.modules.posts.repository.PostCollectionRepository;
import com.okito.okito.modules.posts.service.CollectionService;
import com.okito.okito.modules.users.repository.UserCollectionFollowRepository;
import jakarta.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/12 20:37
 */
@Service
public class CollectionServiceImpl implements CollectionService {

  @Resource
  private CollectionRepository collectionRepository;

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
  public Page<Collection> selectAll(Pageable pageable) {
    return collectionRepository.findAll(pageable);
  }

  @Override
  public Collection selectById(Long id) {
    return collectionRepository.findById(id).orElse(null);
  }

  @Override
  public long countPostsByCollectionId(Long collectionId) {
    return postCollectionRepository.countByCollectionId(collectionId);
  }

  @Override
  public long countFollowByCollectionId(Long collectId) {
    return userCollectionFollowRepository.countFollowByCollectionId(collectId);
  }

  @Override
  public boolean add(Collection collection) {
    collectionRepository.save(collection);
    return true;
  }

  @Override
  public boolean update(Collection collection) {
    Collection newCollection = collectionRepository.findById(collection.getId()).orElse(null);
    if (!Objects.equals(newCollection, null)) {
      newCollection.setName(collection.getName());
      newCollection.setDescription(collection.getDescription());
      newCollection.setCover(collection.getCover());
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
