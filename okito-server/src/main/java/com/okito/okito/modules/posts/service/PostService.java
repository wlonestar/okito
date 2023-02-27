package com.okito.okito.modules.posts.service;

import com.okito.okito.modules.posts.model.entity.Post;
import com.okito.okito.modules.posts.model.view.PostView;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 13:32
 */
public interface PostService {

  List<PostView> selectRecommend100();

  List<PostView> selectAll();

  List<PostView> selectAllByCateId(Long cateId);

  List<PostView> selectAllByTagId(Long tagId);

  List<PostView> selectAllByCollectionId(Long collectionId);

  List<PostView> selectAllByColumnId(Long columnId);

  List<PostView> selectAllByAuthorId(Long authorId);

  List<PostView> selectAllByUserFollowed(Long userId);

  PostView selectById(Long id);

  boolean add(Post post);

  boolean update(Post post);

  void updatePostViewNum(Long postId);

  boolean deleteById(Long id);

}
