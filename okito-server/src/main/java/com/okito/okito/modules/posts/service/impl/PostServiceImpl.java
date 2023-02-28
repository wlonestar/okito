package com.okito.okito.modules.posts.service.impl;

import com.okito.okito.modules.posts.model.entity.Category;
import com.okito.okito.modules.posts.model.entity.Post;
import com.okito.okito.modules.posts.model.view.PostView;
import com.okito.okito.modules.posts.repository.*;
import com.okito.okito.modules.posts.service.PostService;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.repository.UserRepository;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 13:33
 */
@Service
public class PostServiceImpl implements PostService {

  @Resource
  private PostRepository postRepository;

  @Resource
  private PostViewRepository postViewRepository;

  @Resource
  private PostViewRepositoryCustom postViewRepositoryCustom;

  @Resource
  private CategoryRepository categoryRepository;

  @Resource
  private UserRepository userRepository;

  public List<PostView> selectRecommend100() {
    return postViewRepository.findRecommend100();
  }

  @Override
  public List<PostView> searchTitle(String title) {
    return postViewRepositoryCustom.searchByTitle(title);
  }

  @Override
  public List<PostView> searchByKeywords(String keywords) {
    return postViewRepositoryCustom.searchByKeywords(keywords);
  }

  @Override
  public List<PostView> selectAll() {
    return postViewRepository.findAll();
  }

  @Override
  public List<PostView> selectAllByCateId(Long cateId) {
    return postViewRepository.findAllByCateId(cateId);
  }

  @Override
  public List<PostView> selectAllByTagId(Long tagId) {
    return postViewRepository.findAllByTagId(tagId);
  }

  @Override
  public List<PostView> selectAllByCollectionId(Long collectionId) {
    return postViewRepository.findAllByCollectionId(collectionId);
  }

  @Override
  public List<PostView> selectAllByColumnId(Long columnId) {
    return postViewRepository.findAllByColumnId(columnId);
  }

  @Override
  public List<PostView> selectAllByAuthorId(Long authorId) {
    return postViewRepository.findAllByAuthorId(authorId);
  }

  @Override
  public List<PostView> selectAllByUserFollowed(Long userId) {
    return postViewRepository.findAllByUserFollowed(userId);
  }

  @Override
  public PostView selectById(Long id) {
    return postViewRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(Post post) {
    Category category = categoryRepository.findById(post.getCateId()).orElse(null);
    User user = userRepository.findById(post.getAuthorId()).orElse(null);
    if (!Objects.equals(category, null) && !Objects.equals(user, null)) {
      postRepository.save(post);
      return true;
    }
    return false;
  }

  @Override
  public boolean update(Post post) {
    Post newPost = postRepository.findById(post.getId()).orElse(null);
    if (!Objects.equals(newPost, null)) {
      Category category = categoryRepository.findById(post.getCateId()).orElse(null);
      User user = userRepository.findById(post.getAuthorId()).orElse(null);
      if (!Objects.equals(category, null) && !Objects.equals(user, null)) {
        newPost.setTitle(post.getTitle());
        newPost.setSummary(post.getSummary());
        newPost.setCover(post.getCover());
        newPost.setContent(post.getContent());
        newPost.setCreateTime(post.getCreateTime());
        newPost.setUpdateTime(post.getUpdateTime());
        newPost.setDraft(post.getDraft());
        newPost.setCateId(post.getCateId());
        newPost.setAuthorId(post.getAuthorId());
        postRepository.save(newPost);
        return true;
      }
      return false;
    }
    return false;
  }

  @Override
  public void updatePostViewNum(Long postId) {
    Post post = postRepository.findById(postId).orElse(null);
    if (!Objects.equals(post, null)) {
      post.setViewNum(post.getViewNum() + 1);
      postRepository.save(post);
    }
  }

  @Override
  public boolean deleteById(Long id) {
    Post post = postRepository.findById(id).orElse(null);
    if (!Objects.equals(post, null)) {
      postRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
