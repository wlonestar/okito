package com.okito.okito.modules.users.repository;

import jakarta.annotation.Resource;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest
@RunWith(SpringRunner.class)
class UserColumnRepositoryTest {

  @Resource
  UserColumnFollowRepository repository;

  @Test
  void findByUserIdAndType() {
//    Long userId = 1L;
//    Short type = 1;
//    List<Column> collect = repository.findByUserIdAndType(userId, type)
//      .stream().map(Column::convertFromType).toList();
//    collect.forEach(System.out::println);
  }
  
}
