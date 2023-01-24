package com.okito.okito.modules.posts.service.impl;

import com.okito.okito.modules.posts.model.entity.Tag;
import com.okito.okito.modules.posts.model.view.TagView;
import com.okito.okito.modules.posts.repository.PostTagRepository;
import com.okito.okito.modules.posts.repository.TagFollowRepository;
import com.okito.okito.modules.posts.repository.TagRepository;
import com.okito.okito.modules.posts.repository.TagViewRepository;
import com.okito.okito.modules.posts.service.TagService;
import jakarta.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/14 13:01
 */
@Service
public class TagServiceImpl implements TagService {

  @Resource
  private TagRepository tagRepository;

  @Resource
  private TagViewRepository tagViewRepository;

  @Resource
  private PostTagRepository postTagRepository;

  @Resource
  private TagFollowRepository tagFollowRepository;

  @Override
  public List<TagView> selectAll() {
    return tagViewRepository.findAll();
  }

  @Override
  public List<TagView> selectAllByPostId(Long postId) {
    return postTagRepository.findAllByPostId(postId);
  }

  @Override
  public List<TagView> selectAllByFollowerId(Long followerId) {
    return tagFollowRepository.findAllByFollowerId(followerId);
  }

  @Override
  public Page<TagView> selectAll(Pageable pageable) {
    return tagViewRepository.findAll(pageable);
  }

  @Override
  public Page<TagView> selectAllByPostId(Long postId, Pageable pageable) {
    return postTagRepository.findAllByPostId(postId, pageable);
  }

  @Override
  public Page<TagView> selectAllByFollowerId(Long followerId, Pageable pageable) {
    return tagFollowRepository.findAllByFollowerId(followerId, pageable);
  }

  @Override
  public Tag selectById(Long id) {
    return tagRepository.findById(id).orElse(null);
  }

  @Override
  public boolean add(Tag tag) {
    if (!tagRepository.findAllNames().contains(tag.getName())) {
      tagRepository.save(tag);
      return true;
    }
    return false;
  }

  @Override
  public boolean update(Tag tag) {
    Tag newTag = tagRepository.findById(tag.getId()).orElse(null);
    if (!Objects.equals(newTag, null)) {
      if (newTag.getName().equals(tag.getName())) {
        newTag.setCover(tag.getCover());
        newTag.setDescription(newTag.getDescription());
        tagRepository.save(newTag);
        return true;
      } else {
        if (!tagRepository.findAllNames().contains(tag.getName())) {
          newTag.setName(tag.getName());
          newTag.setCover(tag.getCover());
          newTag.setDescription(tag.getDescription());
          tagRepository.save(newTag);
          return true;
        }
        return false;
      }
    }
    return false;
  }

  @Override
  public boolean deleteById(Long id) {
    Tag tag = tagRepository.findById(id).orElse(null);
    if (!Objects.equals(tag, null)) {
      tagRepository.deleteById(id);
      return true;
    }
    return false;
  }

}
