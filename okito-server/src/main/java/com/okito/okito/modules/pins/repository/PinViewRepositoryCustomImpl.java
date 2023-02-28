package com.okito.okito.modules.pins.repository;

import com.okito.okito.modules.pins.model.view.PinView;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/28 10:38
 */
@Repository
public class PinViewRepositoryCustomImpl implements PinViewRepositoryCustom {

  @PersistenceContext
  private EntityManager entityManager;

  @Override
  public List<PinView> searchByKeywords(String keywords) {
    String cond = keywords.replaceAll(" +", "|");
    String query = "select * from pin_view where id in " +
      "(select p.id from pin p where p.fts @@ to_tsquery('" + cond + "'))";
    return entityManager.createNativeQuery(query, PinView.class).getResultList();
  }

}
