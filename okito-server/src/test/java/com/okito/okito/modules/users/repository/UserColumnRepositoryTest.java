package com.okito.okito.modules.users.repository;

import com.okito.okito.modules.posts.model.entity.Column;
import jakarta.annotation.Resource;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Tuple;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
import java.util.stream.Collectors;

@SpringBootTest
@RunWith(SpringRunner.class)
class UserColumnRepositoryTest {

  @Resource
  UserColumnRepository repository;

  @Test
  void findByUserIdAndType() {
//    Long userId = 1L;
//    Short type = 1;
//    List<Column> collect = repository.findByUserIdAndType(userId, type)
//      .stream().map(Column::convertFromType).toList();
//    collect.forEach(System.out::println);
  }
  
}
