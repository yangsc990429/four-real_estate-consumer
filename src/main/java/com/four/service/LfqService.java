package com.four.service;

import com.four.entity.Metro;
import com.four.entity.Tree;
import com.four.entity.User;

import java.util.List;

public interface LfqService {

    String queryuser(User user);

    List<Tree> querytree(Integer a);

    List<Metro> queryMetro();

    Integer queryxuhao();

    void addditiexianlu(Metro metro);

    void deleteditie(Integer id);

    void deleteidspishan(String id);

    Metro updateditiehui(Integer id);

    void updateditiegai(Metro metro);
}
