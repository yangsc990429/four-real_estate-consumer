package com.four.service;

import com.four.entity.Member;
import com.four.entity.User;

import java.util.List;

public interface ZxhService {
    List<Member> selectHui();

    String updatePass(String yuan, String userpass, User user);

    Integer selectMaxXu();

    String insertMem(Member member);

    Member selectMemId(Integer id);

    String updateHuiId(Member member);
}
