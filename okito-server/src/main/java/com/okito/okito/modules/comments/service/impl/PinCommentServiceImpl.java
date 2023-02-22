package com.okito.okito.modules.comments.service.impl;

import com.okito.okito.modules.comments.model.entity.PinComment;
import com.okito.okito.modules.comments.model.view.PinCommentView;
import com.okito.okito.modules.comments.repository.PinCommentRepository;
import com.okito.okito.modules.comments.repository.PinCommentViewRepository;
import com.okito.okito.modules.comments.service.PinCommentService;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/5 22:50
 */
@Slf4j
@Service
public class PinCommentServiceImpl implements PinCommentService {

  @Resource
  private PinCommentRepository pinCommentRepository;

  @Resource
  private PinCommentViewRepository pinCommentViewRepository;

  @Override
  public List<PinCommentView> selectAll() {
    return pinCommentViewRepository.findAll();
  }

  @Override
  public List<PinCommentView> selectAllByPinId(Long pinId) {
    return pinCommentViewRepository.findAllByPinId(pinId);
  }

  @Override
  public List<PinCommentView> selectAllByAuthorId(Long authorId) {
    return pinCommentViewRepository.findAllByAuthorId(authorId);
  }

  @Override
  public List<PinCommentView> selectSecondaryComments(Long id) {
    List<PinCommentView> res = new ArrayList<>();
    PinCommentView parentComment = pinCommentViewRepository.findById(id).orElse(null);
    if (!Objects.equals(parentComment, null)) {
      // if no son, no grandson
      List<PinCommentView> secondaryComments = pinCommentViewRepository.findAllByParentId(id);
      if (secondaryComments.size() != 0) {
        res.addAll(secondaryComments);
        List<PinCommentView> pinCommentViews = selectAllByPinId(parentComment.getPinId());
        pinCommentViews = pinCommentViews.stream()
          .filter(comment -> !Objects.equals(comment.getParentId(), null))
          .filter(comment -> !Objects.equals(comment.getParentId(), id))
          .collect(Collectors.toList());
        pinCommentViews.forEach(comment -> {
          PinCommentView commentParent = pinCommentViewRepository.findById(comment.getParentId()).orElse(null);
          while (!Objects.equals(commentParent, null)) {
            if (res.contains(commentParent)) {
              res.add(comment);
              break;
            }
            if (Objects.equals(commentParent.getParentId(), null)) {
              break;
            }
            commentParent = pinCommentViewRepository.findById(commentParent.getParentId()).orElse(null);
          }
        });
      }
    }
    return res;
  }

  @Override
  public Page<PinCommentView> selectAll(Pageable pageable) {
    return pinCommentViewRepository.findAll(pageable);
  }

  @Override
  public Page<PinCommentView> selectAllByPinId(Long pinId, Pageable pageable) {
    return pinCommentViewRepository.findAllByPinId(pinId, pageable);
  }

  @Override
  public Page<PinCommentView> selectAllByAuthorId(Long authorId, Pageable pageable) {
    return pinCommentViewRepository.findAllByAuthorId(authorId, pageable);
  }

  @Override
  public Page<PinCommentView> selectSecondaryComments(Long id, Pageable pageable) {
    return pinCommentViewRepository.findAllByParentId(id, pageable);
  }

  @Override
  public PinCommentView selectById(Long id) {
    return pinCommentViewRepository.findById(id).orElse(null);
  }

  @Override
  public long countByPinId(Long pinId) {
    return pinCommentRepository.countByPinId(pinId);
  }

  @Override
  public boolean add(PinComment pinComment) {
    Long pinId = pinComment.getPinId();
    if (!Objects.isNull(pinId)) {
      Long parentId = pinComment.getParentId();
      if (!Objects.isNull(parentId)) {
        PinComment parentComment = pinCommentRepository.findById(parentId).orElse(null);
        if (!Objects.isNull(parentComment) && pinId.equals(parentComment.getPinId())) {
          pinCommentRepository.save(pinComment);
          return true;
        }
        return false;
      }
      pinCommentRepository.save(pinComment);
      return true;
    }
    return false;
  }

  @Override
  public boolean update(PinComment pinComment) {
    // not implemented !
    return false;
  }

  @Override
  public boolean deleteById(Long id) {
    PinComment pinComment = pinCommentRepository.findById(id).orElse(null);
    if (!Objects.equals(pinComment, null)) {
      // if exist secondary, set secondary comments parentId 0
      List<PinComment> pinComments = pinCommentRepository.findAllByParentId(id);
      for (PinComment comment : pinComments) {
        comment.setParentId(0L);
        pinCommentRepository.save(comment);
      }
      pinCommentRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
