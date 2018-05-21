package com.four.service;

import com.four.entity.Tree;
import com.four.entity.User;

import java.util.List;

public interface LfqService {

    String queryuser(User user);

    List<Tree> querytree(Integer a);
}
