package com.four.service;

import com.four.entity.*;

import java.util.List;
import java.util.Map;

public interface ZhService {

//**********公交信息*******************************************************************************************8

    List<Public>  queryBus();

    void delbus(Integer id);

    Public updatehx(Integer id);

    void upbus(Public bus);

   void addbus(Public bus);

    Integer queryxuhao();

    void deleteAllBus(String id);

//********业务配套信息******************************************************************************************8

    List<Mating> queryPeiTao();

    void delpeitao(Integer id);

    void delallpeitao(String id);

    void addpeitao(Mating mating);

    List<Apartment> queryxuhaochushou();

    List<Apartment> queryxuhaochuzu();

    Integer queryxuhaoP();

    Mating queryByIdpeitao(Integer id);

    void updatePeiTao(Mating peitao);

    //***********建材中心信息**********************************************************************************************************

    List<Map<String,Object>> queryJianCai();

    void delallJIan(String id);

    Huirenshen renzhengByIdjc(Integer huirenshenid);
}
