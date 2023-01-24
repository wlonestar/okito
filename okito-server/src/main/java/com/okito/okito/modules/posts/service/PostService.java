package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.Post;
import com.okito.okito.modules.posts.model.view.PostView;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 13:32
 */
public interface PostService {

  List<PostView> selectAll();

  List<PostView> selectAllByCateId(Long cateId);

  List<PostView> selectAllByTagId(Long tagId);

  List<PostView> selectAllByCollectionId(Long collectionId);

  List<PostView> selectAllByColumnId(Long columnId);

  List<PostView> selectAllByAuthorId(Long authorId);

  Page<PostView> selectAll(Pageable pageable);

  Page<PostView> selectAllByCateId(Long cateId, Pageable pageable);

  Page<PostView> selectAllByTagId(Long tagId, Pageable pageable);

  Page<PostView> selectAllByCollectionId(Long collectionId, Pageable pageable);

  Page<PostView> selectAllByColumnId(Long columnId, Pageable pageable);

  Page<PostView> selectAllByAuthorId(Long authorId, Pageable pageable);

  PostView selectById(Long id);

  boolean add(Post post);

  boolean update(Post post);

  boolean deleteById(Long id);

  boolean deleteBatch(List<Long> ids);

}
