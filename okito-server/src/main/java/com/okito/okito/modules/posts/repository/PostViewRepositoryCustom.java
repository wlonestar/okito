package com.okito.okito.modules.posts.repository;

import com.okito.okito.modules.posts.model.view.PostView;

import java.util.List;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/2/28 13:29
 */
public interface PostViewRepositoryCustom {

  List<PostView> searchByTitle(String title);

  List<PostView> searchByKeywords(String keywords);

}
