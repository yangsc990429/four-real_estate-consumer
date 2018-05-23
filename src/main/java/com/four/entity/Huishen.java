package com.four.entity;

public class Huishen {


    //会员管理审核
    private int huishenid;
    private String huishenztai;

    public int getHuishenid() {
        return huishenid;
    }

    public void setHuishenid(int huishenid) {
        this.huishenid = huishenid;
    }

    public String getHuishenztai() {
        return huishenztai;
    }

    public void setHuishenztai(String huishenztai) {
        this.huishenztai = huishenztai;
    }


    @Override
    public String toString() {
        return "Huishen{" +
                "huishenid=" + huishenid +
                ", huishenztai='" + huishenztai + '\'' +
                '}';
    }



}
