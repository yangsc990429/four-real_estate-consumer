package com.four.entity;

public class Huiqu {

//会员管理区域表
    private Integer huiquid;
    private String huiqushi;
    private Integer pid;

    public Integer getHuiquid() {
        return huiquid;
    }

    public void setHuiquid(Integer huiquid) {
        this.huiquid = huiquid;
    }

    public String getHuiqushi() {
        return huiqushi;
    }

    public void setHuiqushi(String huiqushi) {
        this.huiqushi = huiqushi;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }


    @Override
    public String toString() {
        return "Huiqu{" +
                "huiquid=" + huiquid +
                ", huiqushi='" + huiqushi + '\'' +
                ", pid=" + pid +
                '}';
    }
}
