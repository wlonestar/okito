package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.view.PostView;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/28 13:33
 */
@Slf4j
@Repository
public class PostViewRepositoryCustomImpl implements PostViewRepositoryCustom {

  @PersistenceContext
  private EntityManager entityManager;

  @Override
  public List<PostView> searchByTitle(String title) {
    String query = "select * from post_view where id in " +
      "(select p.id from post p where p.fts @@ to_tsquery('%" + title + "%'))";
    return entityManager.createNativeQuery(query, PostView.class).getResultList();
  }

  @Override
  public List<PostView> searchByKeywords(String keywords) {
    String cond = keywords
      .replaceAll(" or ", "|")
      .replaceAll(" -", "&!")
      .replaceAll(" +", "&");
    String query = "select * from post_view where id in " +
      "(select p.id from post p where p.fts @@ to_tsquery('" + cond + "'))";
    return entityManager.createNativeQuery(query, PostView.class).getResultList();
  }

}
