package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.PostTag;
import com.okito.okito.modules.posts.model.entity.PostTagId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 13:26
 */
@Repository
public interface PostTagRepository extends JpaRepository<PostTag, PostTagId> {
}
