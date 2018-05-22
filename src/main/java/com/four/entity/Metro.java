package com.four.entity;

import java.io.Serializable;

public class Metro implements Serializable{
    private static final long serialVersionUID = -8597285739954738447L;
    //地铁
    private Integer id;
    private String name;
    private String xuhao;
    private String createdate;

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getXuhao() {
        return xuhao;
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

    public void setXuhao(String xuhao) {
        this.xuhao = xuhao;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    @Override
    public String toString() {
        return "Metro{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", xuhao='" + xuhao + '\'' +
                ", createdate='" + createdate + '\'' +
                '}';
    }
}
