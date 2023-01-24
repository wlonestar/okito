package com.okito.okito.modules.comments.service.impl;

import com.okito.okito.modules.comments.model.entity.PostComment;
import com.okito.okito.modules.comments.model.view.PostCommentView;
import com.okito.okito.modules.comments.repository.PostCommentRepository;
import com.okito.okito.modules.comments.repository.PostCommentViewRepository;
import com.okito.okito.modules.comments.service.PostCommentService;
import jakarta.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/6 13:29
 */
@Service
public class PostCommentServiceImpl implements PostCommentService {

  @Resource
  private PostCommentRepository postCommentRepository;

  @Resource
  private PostCommentViewRepository postCommentViewRepository;

  @Override
  public List<PostCommentView> selectAll() {
    return postCommentViewRepository.findAll();
  }

  @Override
  public List<PostCommentView> selectAllByPostId(Long postId) {
    return postCommentViewRepository.findAllByPostId(postId);
  }

  @Override
  public List<PostCommentView> selectAllByAuthorId(Long authorId) {
    return postCommentViewRepository.findAllByAuthorId(authorId);
  }

  @Override
  public List<PostCommentView> selectSecondaryComments(Long id) {
    return postCommentViewRepository.findAllByParentId(id);
  }

  @Override
  public Page<PostCommentView> selectAll(Pageable pageable) {
    return postCommentViewRepository.findAll(pageable);
  }

  @Override
  public Page<PostCommentView> selectAllByPostId(Long postId, Pageable pageable) {
    return postCommentViewRepository.findAllByPostId(postId, pageable);
  }

  @Override
  public Page<PostCommentView> selectAllByAuthorId(Long authorId, Pageable pageable) {
    return postCommentViewRepository.findAllByAuthorId(authorId, pageable);
  }

  @Override
  public Page<PostCommentView> selectSecondaryComments(Long id, Pageable pageable) {
    return postCommentViewRepository.findAllByParentId(id, pageable);
  }

  @Override
  public PostCommentView selectById(Long id) {
    return postCommentViewRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(PostComment postComment) {
    Long postId = postComment.getPostId();
    PostComment parentComment = postCommentRepository.findById(postComment.getParentId()).orElse(null);
    if (!Objects.equals(parentComment, null)) {
      if (parentComment.getPostId().equals(postId)) {
        postCommentRepository.save(postComment);
        return true;
      }
      return false;
    }
    postCommentRepository.save(postComment);
    return true;
  }

  @Override
  public boolean update(PostComment postComment) {
    // not implemented !
    return false;
  }

  @Override
  public boolean deleteById(Long id) {
    PostComment postComment = postCommentRepository.findById(id).orElse(null);
    if (!Objects.equals(postComment, null)) {
      // if exist secondary, set secondary comments parentId 0
      List<PostComment> postComments = postCommentRepository.findAllByParentId(id);
      for (PostComment comment : postComments) {
        comment.setParentId(0L);
        postCommentRepository.save(comment);
      }
      postCommentRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
