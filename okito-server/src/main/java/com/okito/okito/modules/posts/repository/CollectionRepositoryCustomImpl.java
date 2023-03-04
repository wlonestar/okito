package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.Collection;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/3/4 20:09
 */
@Transactional
@Repository
public class CollectionRepositoryCustomImpl implements CollectionRepositoryCustom {

  @PersistenceContext
  private EntityManager entityManager;

  @Override
  public long nextVal() {
    String sql = "select nextval('collection_id_seq')";
    Object singleResult = entityManager.createNativeQuery(sql).getSingleResult();
    return (long) singleResult;
  }

  @Override
  public Collection add(Collection collection) {
    collection.setId(nextVal());
    String sql = "insert into collection (id, name, type, description, create_time, update_time, author_id)" +
        " values (?, ?, ?, ?, ?, ?, ?)";
    entityManager.createNativeQuery(sql)
        .setParameter(1, collection.getId())
        .setParameter(2, collection.getName())
        .setParameter(3, collection.getType())
        .setParameter(4, collection.getDescription())
        .setParameter(5, collection.getCreateTime())
        .setParameter(6, collection.getUpdateTime())
        .setParameter(7, collection.getAuthorId())
        .executeUpdate();
    return collection;
  }

}
