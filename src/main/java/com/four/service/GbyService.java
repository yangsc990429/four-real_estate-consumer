package com.four.service;

import com.four.entity.Apartment;
import com.four.entity.Area;
import com.four.entity.Business;

import java.util.List;

public interface GbyService {

    List<Apartment> queryApartment();

    Integer querycount();

    void addApartment(Apartment apartment);

    void deleteApartment(Integer id);

    Apartment queryById(Integer id);

    void updateApartment(Apartment apartment);
}
