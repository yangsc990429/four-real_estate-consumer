package com.four.entity;

import java.io.Serializable;

public class Pavenmenttype implements Serializable{
    private static final long serialVersionUID = 5366445949399844072L;
    //铺面类型
    private Integer id;
    private String name;
    private Integer xuhao;
    private String createdate;

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getXuhao() {
        return xuhao;
    }

    public void setXuhao(Integer xuhao) {
        this.xuhao = xuhao;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    @Override
    public String toString() {
        return "Pavenmenttype{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", xuhao='" + xuhao + '\'' +
                ", createdate='" + createdate + '\'' +
                '}';
    }
}
