package com.okito.okito.modules.pins.repository;

import com.okito.okito.modules.pins.model.entity.Pin;
import com.okito.okito.modules.pins.model.view.PinView;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/28 10:38
 */
@Slf4j
@Transactional
@Repository
public class PinRepositoryCustomImpl implements PinRepositoryCustom {

  @PersistenceContext
  private EntityManager entityManager;

  @Override
  public long nextVal() {
    String sql = "select nextval('pin_id_seq')";
    Object seq = entityManager.createNativeQuery(sql).getSingleResult();
    return (long) seq;
  }

  @Override
  public List<PinView> searchByKeywords(String keywords) {
    String cond = keywords
        .replaceAll(" or ", "|")
        .replaceAll(" -", "&!")
        .replaceAll(" +", "&");
    String query = "select * from pin_view where id in " +
        "(select p.id from pin p where p.fts @@ to_tsquery('" + cond + "'))";
    return entityManager.createNativeQuery(query, PinView.class).getResultList();
  }

  @Override
  public Pin add(Pin pin) {
    pin.setId(nextVal());
    String sql = "insert into pin (id, content, create_time, update_time, author_id, view_num) " +
        "values (?, ?, ?, ?, ?, ?)";
    entityManager.createNativeQuery(sql)
        .setParameter(1, pin.getId())
        .setParameter(2, pin.getContent())
        .setParameter(3, pin.getCreateTime())
        .setParameter(4, pin.getUpdateTime())
        .setParameter(5, pin.getAuthorId())
        .setParameter(6, pin.getViewNum())
        .executeUpdate();
    return pin;
  }

}
