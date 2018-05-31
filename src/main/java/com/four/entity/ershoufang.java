package com.four.entity;

import java.io.Serializable;

public class ershoufang implements Serializable{
    private static final long serialVersionUID = -1047425835544202610L;
    private Integer ershouid;

    private String ershoudate;

    private String ershouprice;

    public Integer getErshouid() {
        return ershouid;
    }

    public void setErshouid(Integer ershouid) {
        this.ershouid = ershouid;
    }

    public String getErshoudate() {
        return ershoudate;
    }

    public void setErshoudate(String ershoudate) {
        this.ershoudate = ershoudate == null ? null : ershoudate.trim();
    }

    public String getErshouprice() {
        return ershouprice;
    }

    public void setErshouprice(String ershouprice) {
        this.ershouprice = ershouprice == null ? null : ershouprice.trim();
    }

    @Override
    public String
    toString() {
        return "ershoufang{" +
                "ershouid=" + ershouid +
                ", ershoudate='" + ershoudate + '\'' +
                ", ershouprice='" + ershouprice + '\'' +
                '}';
    }
}