package com.four.entity;

public class Huirenzhuang {

//会员管理认证状态
    private int huirenid;
    private String huirenztai;

    public int getHuirenid() {
        return huirenid;
    }

    public void setHuirenid(int huirenid) {
        this.huirenid = huirenid;
    }

    public String getHuirenztai() {
        return huirenztai;
    }

    public void setHuirenztai(String huirenztai) {
        this.huirenztai = huirenztai;
    }

    @Override
    public String toString() {
        return "Huirenzhuang{" +
                "huirenid=" + huirenid +
                ", huirenztai='" + huirenztai + '\'' +
                '}';
    }
}
