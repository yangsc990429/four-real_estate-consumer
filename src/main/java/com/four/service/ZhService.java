package com.four.service;

import com.four.entity.Public;

import java.util.List;

public interface ZhService {

    List<Public>  queryBus();

    void delbus(Integer id);

    Public updatehx(Integer id);

    void upbus(Public bus);

   void addbus(Public bus);

    Integer queryxuhao();

    void deleteAllBus(String id);
}
