package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.entity.Collection;
import com.okito.okito.modules.posts.model.entity.PostCollection;
import com.okito.okito.modules.posts.model.entity.PostCollectionId;
import com.okito.okito.modules.posts.model.view.PostView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 14:15
 */
@Repository
public interface PostCollectionRepository extends JpaRepository<PostCollection, PostCollectionId> {

  @Query(value = "select new PostView(p.id, p.title, p.summary, p.cover, p.content, " +
      "p.createTime, p.updateTime, p.draft, p.cateId, p.authorId, p.viewNum, p.likeNum) " +
      "from PostView p where p.id in (select pc.id.postId from PostCollection pc where pc.id.collectId = ?1)")
  List<PostView> findAllByCollectionId(Long collectionId);

//  @Deprecated
//  @Query(value = "select new Collection(c.id, c.name, c.cover, c.description, c.createTime, c.updateTime) " +
//      "from Collection c where c.id in (select pc.id.collectId from PostCollection pc where pc.id.postId = ?1)")
//  List<Collection> findAllByPostId(Long postId);

  @Query(value = "select new PostView(p.id, p.title, p.summary, p.cover, p.content, " +
      "p.createTime, p.updateTime, p.draft, p.cateId, p.authorId, p.viewNum, p.likeNum) " +
      "from PostView p where p.id in (select pc.id.postId from PostCollection pc where pc.id.collectId = ?1)")
  Page<PostView> findAllByCollectionId(Long collectionId, Pageable pageable);

//  @Deprecated
//  @Query(value = "select new Collection(c.id, c.name, c.cover, c.description, c.createTime, c.updateTime) " +
//      "from Collection c where c.id in (select pc.id.collectId from PostCollection pc where pc.id.postId = ?1)")
//  Page<Collection> findAllByPostId(Long postId, Pageable pageable);

}
