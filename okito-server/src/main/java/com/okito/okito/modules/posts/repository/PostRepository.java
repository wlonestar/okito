package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 13:32
 */
@Repository
public interface PostRepository extends JpaRepository<Post, Long> {
}
