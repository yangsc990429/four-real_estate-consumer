package com.four.service;

import com.four.entity.Area;
import com.four.entity.Business;
import com.four.entity.Member;
import com.four.entity.User;

import java.util.List;
import java.util.Map;

public interface ZxhService {
    List<Member> selectHui();

    String updatePass(String yuan, String userpass, User user);

    Integer selectMaxXu();

    String insertMem(Member member);

    Member selectMemId(Integer id);

    String updateHuiId(Member member);

    String deleteMemId(Integer id);

    String deleteAllIds(String ids);

    List<Map<String,Object>> selectShang();

    List<Area> queryAreall();

    String insertBusin(Business business);

    String deleteShangId(String id);

    String deleteBusall(String ids);

    Business selectBusId(Integer id);

    String updateBusId(Business business);
}
