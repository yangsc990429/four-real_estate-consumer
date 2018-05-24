package com.four.service;

import com.four.entity.*;

import java.util.List;
import java.util.Map;

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

    List<Overstory> queryOverstory();

    Integer queryfwlcxuhao();

    void adddfanglcsz(Overstory overstory);

    void deletefwcxsz(Integer id);

    void deletefwcxpishan(String id);

    Overstory updatefwcxhui(Integer id);

    void updatefwcxszgai(Overstory overstory);

    List<Map<Object,String>> queryHuiji();

    List queryQuxan(Integer userid);

    List<Map<Object,String>> updatesyhyhuicha(Integer id);
}
