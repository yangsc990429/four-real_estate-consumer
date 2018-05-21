package com.four.entity;

public class Huideng {

    //会员管理会员等级表

    private Integer huidengid;
    private String huidengname;

    public Integer getHuidengid() {
        return huidengid;
    }

    public void setHuidengid(Integer huidengid) {
        this.huidengid = huidengid;
    }

    public String getHuidengname() {
        return huidengname;
    }

    public void setHuidengname(String huidengname) {
        this.huidengname = huidengname;
    }


    @Override
    public String toString() {
        return "Huideng{" +
                "huidengid=" + huidengid +
                ", huidengname='" + huidengname + '\'' +
                '}';
    }
}
