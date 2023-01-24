package com.okito.okito.modules.posts.service.impl;

import com.okito.okito.modules.posts.model.entity.Category;
import com.okito.okito.modules.posts.model.entity.Post;
import com.okito.okito.modules.posts.model.view.PostView;
import com.okito.okito.modules.posts.repository.*;
import com.okito.okito.modules.posts.service.PostService;
import com.okito.okito.modules.users.model.entity.User;
import com.okito.okito.modules.users.repository.UserRepository;
import jakarta.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
  private CategoryRepository categoryRepository;

  @Resource
  private PostTagRepository postTagRepository;

  @Resource
  private PostCollectionRepository postCollectionRepository;

  @Resource
  private PostColumnRepository postColumnRepository;

  @Resource
  private UserRepository userRepository;

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
    return postTagRepository.findAllByTagId(tagId);
  }

  @Override
  public List<PostView> selectAllByCollectionId(Long collectionId) {
    return postCollectionRepository.findAllByCollectionId(collectionId);
  }

  @Override
  public List<PostView> selectAllByColumnId(Long columnId) {
    return postColumnRepository.findAllByColumnId(columnId);
  }

  @Override
  public List<PostView> selectAllByAuthorId(Long authorId) {
    return postViewRepository.findAllByAuthorId(authorId);
  }

  @Override
  public Page<PostView> selectAll(Pageable pageable) {
    return postViewRepository.findAll(pageable);
  }

  @Override
  public Page<PostView> selectAllByCateId(Long cateId, Pageable pageable) {
    return postViewRepository.findAllByCateId(cateId, pageable);
  }

  @Override
  public Page<PostView> selectAllByTagId(Long tagId, Pageable pageable) {
    return postTagRepository.findAllByTagId(tagId, pageable);
  }

  @Override
  public Page<PostView> selectAllByCollectionId(Long collectionId, Pageable pageable) {
    return postCollectionRepository.findAllByCollectionId(collectionId, pageable);
  }

  @Override
  public Page<PostView> selectAllByColumnId(Long columnId, Pageable pageable) {
    return postColumnRepository.findAllByColumnId(columnId, pageable);
  }

  @Override
  public Page<PostView> selectAllByAuthorId(Long authorId, Pageable pageable) {
    return postViewRepository.findAllByAuthorId(authorId, pageable);
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
  public boolean deleteById(Long id) {
    Post post = postRepository.findById(id).orElse(null);
    if (!Objects.equals(post, null)) {
      postRepository.deleteById(id);
      return true;
    }
    return false;
  }

  @Override
  public boolean deleteBatch(List<Long> ids) {
    postRepository.deleteAllById(ids);
    return false;
  }

}
